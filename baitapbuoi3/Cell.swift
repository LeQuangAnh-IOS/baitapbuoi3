//
//  Cell.swift
//  baitapbuoi3
//
//  Created by CodeMe-IOS on 11/28/19.
//  Copyright © 2019 CodeMe-IOS. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
