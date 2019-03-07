//
//  RegisterViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/4/19.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    //Pre-linked IBOutlets
    
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewWillDisappear(_ animated: Bool) {
        SVProgressHUD.dismiss()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//         image.setGradientBackground(colorOne: Colors.inhaColor, colorTwo: Colors.teal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 0
        button.clipsToBounds = true
        button.isEnabled = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.default
    }
    
//
//    func textField(_ textField: UITextField,
//                   shouldChangeCharactersIn range: NSRange,
//                   replacementString string: String)
//        -> Bool
//    {
//        // We ignore any change that doesn't add characters to the text field.
//        // These changes are things like character deletions and cuts, as well
//        // as moving the insertion point.
//        //
//        // We still return true to allow the change to take place.
//        if passwordTextfield.text!.characters.count < 6 {
//            button.isEnabled = false
//        } else {
//            button.isEnabled = true
//        }
//
//        // Check to see if the text field's contents still fit the constraints
//        // with the new content added to it.
//        // If the contents still fit the constraints, allow the change
//        // by returning true; otherwise disallow the change by returning false.
//        let currentText = textField.text ?? ""
//        let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
//
//
//    }
    
    
    func validation(){
        if passwordTextfield.text!.characters.count < 6{
            button.isEnabled = false
        } else {
            button.isEnabled = true
        }
    }
    
    @IBAction func registerPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
    
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil{
                print(error!)
            } else{
                //Success
                print("Registration Successful!")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToChat", sender: self)
                
                // When tapped, set userDefaults to keep the user logged in
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
            }
        }
    }
    

    
}
