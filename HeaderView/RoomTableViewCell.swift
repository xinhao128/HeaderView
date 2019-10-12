//
//  RoomTableViewCell.swift
//  HeaderView
//
//  Created by Xinhao Liang on 10/11/19.
//  Copyright © 2019 Xinhao Liang. All rights reserved.
//

import UIKit

class RoomTableViewCell: UITableViewCell {

    @IBOutlet weak var roomName: UILabel!
    @IBOutlet weak var timeSpent: UILabel!
    @IBOutlet weak var timeDuration: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
