//
//  L&FController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/20/19.
//

import UIKit

class L_FController: UIViewController {

    @IBOutlet weak var top: UIView!
    
    @IBOutlet weak var sendButton: UIButton!
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.setGradientBackground(colorOne: Colors.white, colorTwo: Colors.lightgray)
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        top.dropShadow()
        
        // BUTTON
        sendButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        sendButton.layer.cornerRadius = 20
        sendButton.layer.borderWidth = 0
        sendButton.clipsToBounds = true
        //
    }
    

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}


