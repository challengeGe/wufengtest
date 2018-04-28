//
//  TradViewController.swift
//  SENDemo
//
//  Created by 葛建军 on 2018/4/27.
//  Copyright © 2018年 葛建军. All rights reserved.
//

import UIKit

class TradViewController: UIViewController {
    @IBOutlet weak var scrollViewContentHeight: NSLayoutConstraint!
    @IBOutlet weak var getNumberTextField: UITextField!//买入数量textfield
    @IBOutlet weak var orderListTableVIew: UITableView!//买单列表
    lazy var currentIndexPage:Int = {
        return 0
    }()//当前页是否是首页
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollViewContentHeight.constant = 492
        configTheme()
        registerSubView()
        // Do any additional setup after loading the view.
    }
    //MARK: 注册cell
    func registerSubView(){
        orderListTableVIew.register(UINib(nibName: "OrderTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderTableViewCell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - 买入
    @IBAction func getBuyAction(_ sender: UIButton) {
        if getNumberTextField.text != "" {
            NSLog("点击买入数量\(String(describing: getNumberTextField.text!))")
        }
    }
    // MARK: - 卖出

    
    // MARK: - 首页
    @IBAction func firstPageAction(_ sender: UIButton) {
        currentIndexPage = 0
        reloadDataWithPageIndex()
    }
    // MARK: - 上页
    @IBAction func upPageAction(_ sender: UIButton) {
        if currentIndexPage != 0 {
            currentIndexPage = currentIndexPage-1
            reloadDataWithPageIndex()
        }
    }
    
    // MARK: - 下页
    @IBAction func downPageAction(_ sender: UIButton) {
        currentIndexPage = currentIndexPage+1
        reloadDataWithPageIndex()
    }
//    @IBOutlet weak var kEchartView: PYZoomEchartsView!
    
    // MARK: - 刷新数据
    func reloadDataWithPageIndex(){
        NSLog("当前页数为\(currentIndexPage)")
//        let option = PYLineDemoOptions.logarithmicOption()
//        kEchartView.setOption(option)
//        kEchartView.loadEcharts()
    }
    // MARK: - 折线图
    func getOptionWithArray(array:[Int]){
        
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
extension TradViewController: UITableViewDelegate,UITableViewDataSource,OrderTableViewCellDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath) as! OrderTableViewCell
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    //MARK: cell点击等待买入
    func getSelectIndex() {
        //
    }
}
