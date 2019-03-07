//
//  contactController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/16/19.
//

import UIKit
import MessageUI

class contactController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {

    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground(colorOne: Colors.white, colorTwo: Colors.lightgray)
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
        subject.delegate = self
        body.delegate = self
        body.clipsToBounds = true
        body.layer.cornerRadius = 10
    
        top.dropShadow()
    
        // BUTTON
        sendButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        sendButton.layer.cornerRadius = 20
        sendButton.layer.borderWidth = 0
        sendButton.clipsToBounds = true
        //
    }
    

    @IBOutlet weak var sendButton: UIButton!
    
    
    @IBOutlet weak var top: UIView!
    @IBOutlet weak var subject: UITextField!
    
    @IBOutlet weak var body: UITextView!
    @IBAction func sendMail(_ sender: Any) {
        let picker = MFMailComposeViewController()
        picker.mailComposeDelegate = self
        
        if let subjectText = subject.text{
            picker.setSubject(subjectText)
        }
        
        //UIApplication.shared.open(URL(string: "mailto:ivaev2274@gmail.com")! as URL, options: [:], completionHandler: nil)
        
        picker.setMessageBody(body.text, isHTML: true)
        picker.setToRecipients(["Iutmobiledeveloper@gmail.com"])
        present(picker, animated: true, completion: nil)
        
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

 
    
    //MFMailComposeViewControllerDelegate
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }
    
    // UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    // UITextViewDelegate
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool{
        body.text = textView.text
        
        if text == "\n" {
            textView.resignFirstResponder()
            
            return false
        }
        return true
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    

}

extension UIView {
    
    // OUTPUT 1
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
   
}
