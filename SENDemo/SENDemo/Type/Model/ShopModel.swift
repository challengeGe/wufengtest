//
//  ShopModel.swift
//  SENDemo
//
//  Created by 葛建军 on 2018/4/27.
//  Copyright © 2018年 葛建军. All rights reserved.
//

import UIKit

class ShopModel: NSObject {
    lazy var type:Int = {//用来区分类型
        return 0
    }()
    lazy var name:String = {
        return "爱他美"
    }()
    lazy var imagePath:String = {
        return "shop_icon"
    }()
    override init() {
    }
}
