//
//  RequestViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/17/19.
//

import UIKit
import WebKit

class RequestViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var requestDocs: UIWebView!
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
        requestDocs.delegate = self
        if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLScE6ou7z_T7MDnc3LdKNmwqwDxqpQsOsk3ROWugbCnjLVoJOQ/viewform?usp=sf_") {
            let request = URLRequest(url: url)
            requestDocs.loadRequest(request)
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    
}
