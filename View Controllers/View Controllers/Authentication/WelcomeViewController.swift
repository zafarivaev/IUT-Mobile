//
//  WelcomeViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/4/19.
//

import UIKit



class WelcomeViewController: UIViewController {
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1.0))
    }
//    override func viewWillAppear(_ animated: Bool) {
//        setStatusBarBackgroundColor(color: UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1.0))
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        setStatusBarBackgroundColor(color: UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1.0))
//    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.default
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
