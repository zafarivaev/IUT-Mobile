//
//  ExamsCell.swift
//  IUT Mobile
//
//  Created by Zafar on 3/4/19.
//

import UIKit

class ExamsCell: UITableViewCell {
    
    @IBOutlet weak var start: UILabel!
    @IBOutlet weak var end: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var room: UILabel!
    @IBOutlet weak var verticalBar: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
