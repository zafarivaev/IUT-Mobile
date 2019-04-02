//
//  ItemDetailViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 4/1/19.
//

import UIKit
import RealmSwift
import ChameleonFramework
import UserNotifications

protocol ItemDetailViewControllerDelegate: class {
    func dataReceived(item: Item)
}

class ItemDetailViewController: UITableViewController, UITextFieldDelegate{
    
    var delegate: ItemDetailViewControllerDelegate?
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarStyle(.lightContent)
        updateDueDateLabel()
    }
    
    
 
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
       
    }
    
    func updateDueDateLabel(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        dueDateLabel.text = formatter.string(from: dueDate)
        
        
    }
    
    @IBAction func cancel(){
//        delegate?.itemDetailviewControllerDidCancel(self)
        dismiss(animated: true, completion: nil)
    }
    
    
    let userDefaults = UserDefaults.standard
    
    
    @IBAction func done(){
        let itemID = userDefaults.integer(forKey: "ChecklistItemID")
        userDefaults.set(itemID + 1, forKey: "ChecklistItemID")
        userDefaults.synchronize()
        
        let newItem = Item()
        newItem.title = textField.text!
        newItem.dateCreated = Date()
        
        newItem.shouldRemind = shouldRemindSwitch.isOn
        newItem.whenRemind = dueDate
        newItem.itemID = itemID
        if newItem.shouldRemind{
            scheduleNotification(id: newItem.itemID)
        }
        
        
        delegate?.dataReceived(item: newItem)
    }
    
    func scheduleNotification(id: Int){
//        removeNotification()
        print("This is due to: \(dueDate)")
        if shouldRemindSwitch.isOn && dueDate > Date(){
            //1
            let content = UNMutableNotificationContent()
            content.title = "Reminder:"
            content.body = textField.text!
            content.sound = UNNotificationSound.default
            
            //2
            let calendar = Calendar(identifier: .gregorian)
            let components = calendar.dateComponents([.month, .day, .hour, .minute], from: dueDate)
            
            //3
            let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
            
            //4
            let request = UNNotificationRequest(identifier: "\(id)", content: content, trigger: trigger)
            
            //5
            let center = UNUserNotificationCenter.current()
            center.add(request)
            
            print("Scheduled notification \(request) for itemID \(id)")
        }
    }
    
    
    //ASKING FOR PERMISSION
    @IBAction func shouldRemindToggled(_ switchControl: UISwitch){
        textField.resignFirstResponder()
        
        if switchControl.isOn{
            let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound]){
                granted, error in /* do nothing */
            }
        }
    }
    
    //LISTENING TO THE DATE PICKER
    @IBAction func dateChanged(_ datePicker: UIDatePicker){
        dueDate = datePicker.date
        updateDueDateLabel()
        print(dueDate)
    }
    
    
    
    //Outlet
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBOutlet weak var shouldRemindSwitch: UISwitch!
    @IBOutlet weak var dueDateLabel: UILabel!
    @IBOutlet weak var datePickerCell: UITableViewCell!
    @IBOutlet weak var datePicker: UIDatePicker!
    
//    var itemToEdit: ChecklistItem?
    var dueDate = Date()
    var datePickerVisible = false
    
    func showDatePicker(){
        datePickerVisible = true
        
        let indexPathDateRow = IndexPath(row: 1, section: 1)
        let indexPathDatePicker = IndexPath(row: 2, section: 1)
        
        if let dateCell = tableView.cellForRow(at: indexPathDateRow){
            dateCell.detailTextLabel!.textColor = dateCell.detailTextLabel!.tintColor
        }
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPathDatePicker], with: .fade)
        tableView.reloadRows(at: [indexPathDateRow], with: .none)
        tableView.endUpdates()
        
        datePicker.setDate(dueDate, animated: false)
    }
    
    func updateNavBar(withHexCode colorHexCode: String){
        guard let navBar = navigationController?.navigationBar else {fatalError("NavController does not exist.")}
        guard let navBarColor = UIColor(hexString: colorHexCode) else {fatalError()}
        
        
        navBar.barTintColor = navBarColor
        
        navBar.tintColor = ContrastColorOf(navBarColor, returnFlat: true)
        
        navBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : ContrastColorOf(navBarColor, returnFlat: true)]
        
      
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        if indexPath.section == 1 && indexPath.row == 2{
            return datePickerCell
        }
        else{
            return super.tableView(tableView, cellForRowAt: indexPath)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 1 && datePickerVisible{
            return 3
        }
        else{
            return super.tableView(tableView, numberOfRowsInSection: section)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        if indexPath.section == 1 && indexPath.row == 2{
            return 217
        }
        else{
            return super.tableView(tableView, heightForRowAt: indexPath)
        }
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.section == 1 && indexPath.row == 1{
            return indexPath
        }
        else{
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        textField.resignFirstResponder()
        
        if indexPath.section == 1 && indexPath.row == 1{
            if !datePickerVisible{
                showDatePicker()
            }
            else{
                hideDatePicker()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int{
        var newIndexPath = indexPath
        if indexPath.section == 1 && indexPath.row == 2{
            newIndexPath = IndexPath(row: 0, section: indexPath.section)
        }
        return super.tableView(tableView, indentationLevelForRowAt: newIndexPath)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        let oldText = textField.text! as NSString
        let newText = oldText.replacingCharacters(in: range, with: string) as NSString
        
        doneBarButton.isEnabled = (newText.length > 0)
        return true
    }
    
    func hideDatePicker(){
        if datePickerVisible{
            datePickerVisible = false
            
            let indexPathDateRow = IndexPath(row: 1, section: 1)
            let indexPathDatePicker = IndexPath(row: 2, section: 1)
            
            if let cell = tableView.cellForRow(at: indexPathDateRow){
                cell.detailTextLabel!.textColor = UIColor(white: 0, alpha: 0.5)
            }
            
            tableView.beginUpdates()
            tableView.reloadRows(at: [indexPathDateRow], with: .none)
            tableView.deleteRows(at: [indexPathDatePicker], with: .fade)
            tableView.endUpdates()
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        hideDatePicker()
    }
    
    
}

