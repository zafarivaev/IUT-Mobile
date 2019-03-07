//
//  LibraryViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class LibraryViewController: UIViewController {
    
    @IBOutlet weak var booksButton: UIButton!
    @IBOutlet weak var booksImage: UIImageView!
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        booksButton.setGradientBackground(colorOne: Colors.steelblue, colorTwo: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
        booksButton.layer.cornerRadius = 20
        booksButton.layer.borderWidth = 0
        booksButton.clipsToBounds = true
        
        booksImage.layer.cornerRadius = 20
        booksImage.layer.borderWidth = 0
        booksImage.clipsToBounds = true
    }

}
