//
//  MoreViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/9/19.
//  Copyright © 2019 Zafar Ivaev. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {
    //clubs
    @IBOutlet weak var clubsButton: UIButton!
    
    //library
    @IBOutlet weak var libraryButton: UIButton!
    
    //staff
    @IBOutlet weak var staffButton: UIButton!
    
    //admissions
    @IBOutlet weak var admissionsButton: UIButton!
    
    
    
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        // BUTTONS
    clubsButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        clubsButton.layer.cornerRadius = 20
        clubsButton.layer.borderWidth = 0
        clubsButton.clipsToBounds = true
        
    libraryButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        libraryButton.layer.cornerRadius = 20
        libraryButton.layer.borderWidth = 0
        libraryButton.clipsToBounds = true
    staffButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        staffButton.layer.cornerRadius = 20
        staffButton.layer.borderWidth = 0
        staffButton.clipsToBounds = true
        
    admissionsButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        admissionsButton.layer.cornerRadius = 20
        admissionsButton.layer.borderWidth = 0
        admissionsButton.clipsToBounds = true
        //
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    
}
