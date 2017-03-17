//
//  ViewController.swift
//  BatteryDemo
//
//  Created by zhoucan on 2017/1/11.
//  Copyright © 2017年 verfing. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        
        
        let bat = BatteryView()
        self.view.addSubview(bat)
        bat.electricPercent = 0.19
        bat.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize.init(width: 100, height: 100))
            make.center.equalTo(self.view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

