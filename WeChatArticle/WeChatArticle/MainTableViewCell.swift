//
//  MainTableViewCell.swift
//  WeChatArticle
//
//  Created by Broven on 16/2/24.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var imageOfArticle: UIImageView!

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
