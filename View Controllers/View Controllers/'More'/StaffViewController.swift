//
//  StaffViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class StaffViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarStyle(.lightContent)
        scrollView.contentSize.height = 2500
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

}
