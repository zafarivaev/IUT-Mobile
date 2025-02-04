//
//  ToDoListViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/5/19.
//

import UIKit
import RealmSwift
import UserNotifications
import ChameleonFramework

class ToDoListViewController: SwipeTableViewController, ItemDetailViewControllerDelegate {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var todoItems: Results<Item>?
    let realm = try! Realm()
    
    var selectedCategory: Category? {
        didSet {
            loadItems()
        }
    }
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = navigationController?.navigationBar.barTintColor
    }
    
    func setStatusBarBackgroundColorInha(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        title = selectedCategory?.name
        
        guard let colorHex = selectedCategory?.color else {fatalError()}
        
        updateNavBar(withHexCode: colorHex)
        setStatusBarBackgroundColor(color: (navigationController?.navigationBar.barTintColor)!)
    }
    
 
    override func viewWillDisappear(_ animated: Bool) {
        
        setStatusBarBackgroundColorInha(color: Colors.inhaColor)
        updateNavBar(withHexCode: "2967AB")
        
    }

    
    //MARK: - Nav Bar Setup Methods
    func updateNavBar(withHexCode colorHexCode: String){
        guard let navBar = navigationController?.navigationBar else {fatalError("NavController does not exist.")}
        guard let navBarColor = UIColor(hexString: colorHexCode) else {fatalError()}
        
        
        navBar.barTintColor = navBarColor
        
        navBar.tintColor = ContrastColorOf(navBarColor, returnFlat: true)
        
        navBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : ContrastColorOf(navBarColor, returnFlat: true)]
        
        searchBar.barTintColor = navBarColor
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems?.count ?? 1
    }
    
    
    func configureCheckmark(for cell: UITableViewCell, with item: Item){
        let label = cell.viewWithTag(1001) as! UILabel
        
        if item.done{
            label.text = "✅"
            
        }
        else{
            label.text = ""
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        
        
        if let item = todoItems?[indexPath.row] {
            
            cell.textLabel?.text = item.title
            
            if let color = UIColor(hexString: selectedCategory!.color)?.darken(byPercentage: CGFloat(indexPath.row) / CGFloat(todoItems!.count)) {
                cell.backgroundColor = color
                cell.textLabel?.textColor = ContrastColorOf(color, returnFlat: true)
            }
            
            //            print("version 1: \(CGFloat(indexPath.row / todoItems!.count))")
            //            print("version 2: \(CGFloat(indexPath.row) / CGFloat(todoItems!.count))")
            
            configureCheckmark(for: cell, with: todoItems![indexPath.row])
        } else{
            cell.textLabel?.text = "No Items Added"
        }
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let item = todoItems?[indexPath.row] {
            do{
                try realm.write {
                    item.done = !item.done
                }
            }
            catch {
                print(error)
            }
        }
        
        tableView.reloadData()
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    // MARK: Add new Items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        
        //END
    }
    
    //CODE FOR SAVING
    
    func dataReceived(item: Item){
            if let currentCategory = self.selectedCategory {
                do {
                    try self.realm.write {
//                            let newItem = Item()
//                            newItem.title = name
//                            newItem.dateCreated = Date()
//
//                            newItem.shouldRemind = should
//                            newItem.whenRemind = when
//                            newItem.itemID = identifier
//                            print("The itemID: \(newItem.itemID)")
//                        if newItem.shouldRemind{
//                            newItem.scheduleNotification()
//                        }
                        
                            currentCategory.items.append(item)
                        
                        }
                    
                } catch {
                    print(error)
                }
            }
        
        tableView.reloadData()
        
        dismiss(animated: true, completion: nil)
    }
    
    func loadItems(){
        
        todoItems = selectedCategory?.items.sorted(byKeyPath: "title", ascending: true)
        tableView.reloadData()
    }
    
    //MARK: - Delete Data From Swipe
    
    override func updateModel(at indexPath: IndexPath) {
        
        super.updateModel(at: indexPath)
        
        let itemForDeletion = self.todoItems?[indexPath.row]
        removeNotification(id: (itemForDeletion?.itemID)!)
        if itemForDeletion != nil{
            
            do{
                try self.realm.write {
                    self.realm.delete(itemForDeletion!)
                   
                }
            } catch {
                print(error)
            }
        }
            
        
        
    }
    
    func removeNotification(id: Int){
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: ["\(id)"])
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //1
        if segue.identifier == "add"{
            //2
            let navigationController = segue.destination as! UINavigationController
            //3
            let controller = navigationController.topViewController as! ItemDetailViewController
            //4
            controller.delegate = self
        }
    }
   
    
}

//MARK: - Search Bar Methods
extension ToDoListViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        todoItems = todoItems?.filter("title CONTAINS[cd] %@", searchBar.text!).sorted(byKeyPath: "dateCreated", ascending: true)
        tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text?.count == 0{
            loadItems()
            DispatchQueue.main.async {
                searchBar.resignFirstResponder()
            }
        }
    }
}


