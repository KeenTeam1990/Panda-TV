//
//  IsLivingVC.swift
//  XMTV
//
//  Created by Mac on 2017/1/16.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

class IsLivingVC: BaseSearchVC {
    
    fileprivate lazy var searchVM: IsLivingVM = IsLivingVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK:- 发送网络请求
extension IsLivingVC {
    override func loadData() {
        baseVM = self.searchVM
        searchVM.status = 2
        searchVM.keywords = UserDefaults.standard.object(forKey: "keywords") as! String
        searchVM.requestLivingData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }
}
