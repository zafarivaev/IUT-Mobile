//
//  AdmissionViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit
import SafariServices

class AdmissionViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func socieLink(_ sender: Any) {
        if let url = URL(string: " https://inha.uz/en/cse/"){
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        }
    }
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize.height = 3000
        setStatusBarBackgroundColor(color: Colors.inhaColor)
    }
    override var prefersStatusBarHidden: Bool{
        return false
    }

}
