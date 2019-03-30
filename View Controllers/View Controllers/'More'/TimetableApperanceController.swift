//
//  GroupViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/11/19.
//

import UIKit

class TimetableAppearanceController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var buttonChoose: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    @IBAction func choseType(_ sender: UIButton) {
        print(chosenType)
        UserDefaults.standard.set("\(chosenType)", forKey: "chosenType")
        UserDefaults.standard.synchronize()
        
        if UserDefaults.standard.string(forKey: "chosenType") == "List"{
            
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "firstList") as! ListTabBarViewController
        present(vc, animated: true, completion: nil)
            
        } else if UserDefaults.standard.string(forKey: "chosenType") == "Table" {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "first") as! TabBarViewController
            present(vc, animated: true, completion: nil)
        } else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "first") as! TabBarViewController
            present(vc, animated: true, completion: nil)
        }
    }
    @IBAction func notNow(_ sender: UIButton) {
        print(chosenType)
//        UserDefaults.standard.set("", forKey: "chosenType")
//        UserDefaults.standard.synchronize()
        dismiss(animated: true, completion: nil)
    }
    
    var chosenType = ""
    
    let types = ["Choose type", "Table", "Lists"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return types[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return types.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenType = "\(types[row])"
        print(chosenType)
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
        buttonChoose.setTitle("Choose",for: .normal)
        buttonChoose.layer.cornerRadius = 20
        buttonChoose.layer.borderWidth = 0
        buttonChoose.clipsToBounds = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        buttonChoose.setTitle("Choose",for: .normal)
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
