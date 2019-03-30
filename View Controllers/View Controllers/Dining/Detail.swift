//
//  Detail.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class Detail: UIViewController {
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.alizarin
    }
    
    @IBOutlet var detailImage: UIImageView!
    
    @IBOutlet var detailLabel: UILabel!
    
    @IBOutlet var moreInfoLabel: UILabel!
    
    
    
    var imageDetail = ""
    var descriptionLabel = ""
    var moreInfoDetail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.alizarin)
        setStatusBarStyle(.lightContent)
        detailImage.image = UIImage(named: imageDetail)
        detailLabel.text = descriptionLabel
        moreInfoLabel.text = moreInfoDetail
        detailImage.layer.cornerRadius = 20
        detailImage.layer.borderWidth = 0
        detailImage.clipsToBounds = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}



