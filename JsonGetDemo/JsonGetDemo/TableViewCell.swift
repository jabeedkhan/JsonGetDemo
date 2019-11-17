//
//  TableViewCell.swift
//  JsonGetDemo
//
//  Created by jabeed on 30/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblcapital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
