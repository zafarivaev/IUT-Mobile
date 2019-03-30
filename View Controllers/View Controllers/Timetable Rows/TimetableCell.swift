//
//  ExamsCell.swift
//  IUT Mobile
//
//  Created by Zafar on 3/4/19.
//

import UIKit

class TimetableCell: UITableViewCell {
    
    
    @IBOutlet weak var professor: UILabel!
    @IBOutlet weak var start: UILabel!
    @IBOutlet weak var end: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var room: UILabel!
    @IBOutlet weak var verticalBar: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
