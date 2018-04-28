//
//  OrderTableViewCell.swift
//  SENDemo
//
//  Created by 葛建军 on 2018/4/27.
//  Copyright © 2018年 葛建军. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    var delegate:OrderTableViewCellDelegate!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //MARK: 点击等待买入按钮
    @IBAction func selectBuyAction(_ sender: UIButton) {
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
protocol OrderTableViewCellDelegate {
    func getSelectIndex()
}
