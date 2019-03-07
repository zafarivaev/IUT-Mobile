//
//  MailViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/9/19.
//  Copyright © 2019 Zafar Ivaev. All rights reserved.
//

import UIKit
import WebKit

class MailViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var mail: UIWebView!
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
        mail.delegate = self
        if let url = URL(string: "https://mail.inha.uz") {
            let request = URLRequest(url: url)
            mail.loadRequest(request)
        }
    }
    
    
   
    
    
}
