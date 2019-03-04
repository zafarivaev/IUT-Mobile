//
//  canCell.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class canCell: UITableViewCell {

    @IBOutlet weak var canteenImage: UIImageView!
    
    @IBOutlet weak var canteenLabel: UILabel!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        canteenImage.layer.cornerRadius = 20
        canteenImage.layer.borderWidth = 0
        canteenImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
