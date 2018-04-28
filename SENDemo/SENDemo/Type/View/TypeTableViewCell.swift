//
//  TypeTableViewCell.swift
//  SENDemo
//
//  Created by 葛建军 on 2018/4/27.
//  Copyright © 2018年 葛建军. All rights reserved.
//

import UIKit

class TypeTableViewCell: UITableViewCell {
    @IBOutlet weak var typeNameLabel: UILabel!//类型展示名称label
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
