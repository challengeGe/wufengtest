//
//  utile.swift
//  SENDemo
//
//  Created by 葛建军 on 2018/4/27.
//  Copyright © 2018年 葛建军. All rights reserved.
//

import UIKit

extension UIViewController {
    //设置顶栏的各种显示属性
    func configTheme(){
        self.navigationController?.navigationBar.barTintColor = UIColor.orange
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent=false
        let textAttributes = NSMutableDictionary(capacity:1)
        textAttributes.setObject(UIColor.white, forKey: NSAttributedStringKey.foregroundColor as NSCopying)
        self.navigationController?.navigationBar.titleTextAttributes=textAttributes as! [AnyHashable: Any] as? [NSAttributedStringKey : Any]
    }
}
