//
//  GroupViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/11/19.
//

import UIKit

class GroupViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var buttonChoose: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!

    
    @IBAction func choseGroup(_ sender: UIButton) {
        print(choosenGroup)
        
     
        UserDefaults.standard.set("\(choosenGroup)", forKey: "chosenGroup")
    
        
        
        
        UserDefaults.init(suiteName: "group.com.zafar.timetable")?.setValue("\(choosenGroup)", forKey: "chosenGroup")
        
        UserDefaults.standard.synchronize()
       
        if UserDefaults.standard.string(forKey: "chosenType") == "List"{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "firstList") as! ListTabBarViewController
            present(vc, animated: true, completion: nil)
            
        } else if UserDefaults.standard.string(forKey: "chosenType") == "Table" {
            performSegue(withIdentifier: "goHome", sender: self)
        } else {
            performSegue(withIdentifier: "goHome", sender: self)
        }
        
    }
    @IBAction func notNow(_ sender: UIButton) {
        print(choosenGroup)
        UserDefaults.standard.set("", forKey: "chosenGroup")
        UserDefaults.standard.synchronize()
        
        if UserDefaults.standard.string(forKey: "chosenType") == "List"{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "firstList") as! ListTabBarViewController
            present(vc, animated: true, completion: nil)
            
        } else if UserDefaults.standard.string(forKey: "chosenType") == "Table" {
            performSegue(withIdentifier: "goHome", sender: self)
        } else {
            performSegue(withIdentifier: "goHome", sender: self)
        }
    }
    
    var choosenGroup = ""
    
    let groups = ["Choose Group","CIE18-1", "CIE18-2","CIE18-3","CIE18-4","CIE18-5","CIE18-6", "CIE18-7", "CIE18-8", "CIE18-9", "CIE18-10", "CIE18-11","CIE18-12","CIE18-13","CIE18-14","CIE18-15", "CIE18-16", "CIE18-17","CIE18-18", "CIE18-19", "CIE18-20", "CIE18-21", "CIE18-22", "CIE18-23", "CIE18-24","CIE18-25","CIE18-26","CIE18-27","CIE18-28","SOL18-1","SOL18-2","SOL18-3","SOL18-4"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return groups[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return groups.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        choosenGroup = "\(groups[row])"
        print(choosenGroup)
    }
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        pickerView.dropShadow()
        pickerView.layer.cornerRadius = 20
        pickerView.layer.borderWidth = 0
        pickerView.clipsToBounds = true
        
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)


    }
    

    override func viewWillAppear(_ animated: Bool) {
 
        buttonChoose.addContinuousGradient(colorOne: Colors.green, colorTwo: Colors.seagreen, colorThree: Colors.green, object: buttonChoose, isCircular: false)
        buttonChoose.setTitle("Let's go!",for: .normal)
        buttonChoose.layer.cornerRadius = 20
        buttonChoose.layer.borderWidth = 0
        buttonChoose.clipsToBounds = true

    }
    
    override func viewDidAppear(_ animated: Bool) {
        buttonChoose.setTitle("Let's go!",for: .normal)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
