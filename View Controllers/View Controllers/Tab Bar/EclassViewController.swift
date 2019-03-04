//
//  EclassViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/9/19.
//  Copyright © 2019 Zafar Ivaev. All rights reserved.
//

import UIKit
import WebKit

class EclassViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var eclass: UIWebView!
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        eclass.delegate = self
        if let url = URL(string: "http://eclass.inha.uz/servlet/controller.homepage.MainServlet") {
            let request = URLRequest(url: url)
            eclass.loadRequest(request)
        }
    }
    
    
   
    
    
}

