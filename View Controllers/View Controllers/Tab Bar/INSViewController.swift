//
//  INSViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/16/19.
//
import UIKit
import WebKit

class INSViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var ins: UIWebView!
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
        ins.delegate = self
        if let url = URL(string: "http://ins.inha.uz") {
            let request = URLRequest(url: url)
            ins.loadRequest(request)
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    
}

