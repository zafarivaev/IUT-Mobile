//
//  MoreViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/9/19.
//  Copyright © 2019 Zafar Ivaev. All rights reserved.
//

import UIKit
import Firebase


class MoreViewController: UIViewController {
    
    //GRADIENT
    
//
    
    
    //choose group
    @IBOutlet weak var groupButton: UIButton!
    
    //choose timetable appearance
    @IBOutlet weak var appearanceButton: UIButton!
    
    //clubs
    @IBOutlet weak var requestButton: UIButton!
    
    //library
    @IBOutlet weak var libraryButton: UIButton!
    
    
    //Lost & found
    @IBOutlet weak var lostButton: UIButton!
    
    //staff
    @IBOutlet weak var staffButton: UIButton!
    
    //admissions
    @IBOutlet weak var admissionsButton: UIButton!
    
    
    @IBOutlet weak var logOutButton: UIButton!
    
    
    //Choosing group
    @IBAction func chooseGroup(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "group") as! GroupViewController
        
        present(vc, animated: true, completion: nil)
    }

    
    // Logging out
    @IBAction func logOut(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            
            // Going to the right VC
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "navBar1") as! startingNav
            
            // Updating UserDefaults
            UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
            UserDefaults.standard.set("", forKey: "chosenGroup")
            UserDefaults.standard.set("", forKey: "chosenType")
            UserDefaults.standard.synchronize()
            present(vc, animated: true, completion: nil)
        }
        catch {
            print("error with signing out.")
        }
    }
    
    //Lost item action
    @IBAction func lostFound(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LF") as! L_FController
        
        present(vc, animated: true, completion: nil)
    }
    
    
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
        // BUTTONS
        groupButton.setGradientBackground(colorOne: Colors.green, colorTwo: Colors.green)
        groupButton.layer.cornerRadius = 20
        groupButton.layer.borderWidth = 0
        groupButton.clipsToBounds = true
        
        appearanceButton.setGradientBackground(colorOne: Colors.green, colorTwo: Colors.green)
        appearanceButton.layer.cornerRadius = 20
        appearanceButton.layer.borderWidth = 0
        appearanceButton.clipsToBounds = true
        
    requestButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        requestButton.layer.cornerRadius = 20
        requestButton.layer.borderWidth = 0
        requestButton.clipsToBounds = true
        
    libraryButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        libraryButton.layer.cornerRadius = 20
        libraryButton.layer.borderWidth = 0
        libraryButton.clipsToBounds = true
   
        
        lostButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        lostButton.layer.cornerRadius = 20
        lostButton.layer.borderWidth = 0
        lostButton.clipsToBounds = true
        
//    admissionsButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
//        admissionsButton.layer.cornerRadius = 20
//        admissionsButton.layer.borderWidth = 0
//        admissionsButton.clipsToBounds = true
        //
        
        logOutButton.setGradientBackground(colorOne: Colors.red, colorTwo: Colors.alizarin)
        logOutButton.layer.cornerRadius = 20
        logOutButton.layer.borderWidth = 0
        logOutButton.clipsToBounds = true
        //
        
        
        //Adding continuous gradient
        groupButton.addContinuousGradient(colorOne: Colors.green, colorTwo: Colors.teal, colorThree: Colors.green, object: groupButton, isCircular: false)
        appearanceButton.addContinuousGradient(colorOne: Colors.green, colorTwo: Colors.teal, colorThree: Colors.green, object: appearanceButton, isCircular: false)
        logOutButton.addContinuousGradient(colorOne: Colors.red, colorTwo: Colors.pumpkin, colorThree: Colors.alizarin, object: logOutButton, isCircular: false)
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    
}
