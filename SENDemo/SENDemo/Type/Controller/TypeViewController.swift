//
//  TypeViewController.swift
//  SENDemo
//
//  Created by 葛建军 on 2018/4/27.
//  Copyright © 2018年 葛建军. All rights reserved.
//

import UIKit

class TypeViewController: UIViewController {
    
    @IBOutlet weak var currentTypeLabel: UILabel!
    @IBOutlet weak var typeTableView: UITableView!//类别展示tableView
    lazy var typeArray:[String] = {
        return ["保健品","酒水","茶叶","农产品"]
    }()
    
    @IBOutlet weak var shopsCollectionView: UICollectionView!//商品展示collectionView
    lazy var shopsArray:[ShopModel] = {
        return []
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTheme()
        registerSubView()
        // Do any additional setup after loading the view.
    }
    //MARK: 注册cell
    func registerSubView(){
        for _ in 0...10{
            self.shopsArray.append(ShopModel())
        }
        typeTableView.register(UINib(nibName: "TypeTableViewCell", bundle: nil), forCellReuseIdentifier: "TypeTableViewCell")
        typeTableView.selectRow(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: UITableViewScrollPosition.top)

        shopsCollectionView.register(UINib(nibName: "ShopDetailCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ShopDetailCollectionViewCell")
        shopsCollectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension TypeViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TypeTableViewCell", for: indexPath) as! TypeTableViewCell
        cell.typeNameLabel.text = typeArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentTypeLabel.text = typeArray[indexPath.row]
        //刷新商品展示列表collectionView
        shopsArray = ["":[]]
        shopsCollectionView.reloadData()
    }
    
    
}
extension TypeViewController: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shopsArray.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height =  (UIScreen.main.bounds.size.width-80-16)/3
        return CGSize(width:height, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopDetailCollectionViewCell", for: indexPath)
        return cell
    }
    
    
}
