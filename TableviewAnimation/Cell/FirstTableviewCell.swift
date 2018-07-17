//
//  FirstTableviewCell.swift
//  TableviewAnimation
//
//  Created by Sushant Hegde on 17/07/18.
//  Copyright © 2018 Sushant Hegde. All rights reserved.
//

import UIKit

class FirstTableviewCell: UITableViewCell {

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var cornerRadiusView: UIView!
    @IBOutlet weak var textLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
