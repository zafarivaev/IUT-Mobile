//
//  myCell.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class myCell: UITableViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var myLabel: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImageView.layer.cornerRadius = 20
        myImageView.layer.borderWidth = 0
        myImageView.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

