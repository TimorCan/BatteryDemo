//
//  BatteryView.swift
//  BatteryDemo
//
//  Created by zhoucan on 2017/1/11.
//  Copyright © 2017年 verfing. All rights reserved.
//

import UIKit
import SnapKit
class BatteryView: UIView {

    var electricPercent:Float = 1.0
        {
    
        didSet{
            
            
            switch electricPercent {
            case 0..<0.2:
                green.backgroundColor = UIColor.red
            case 0.2..<0.8:
                green.backgroundColor = UIColor.orange
            case 0.8..<1.0:
                green.backgroundColor = UIColor.green
            default:
                 green.backgroundColor = UIColor.clear
            }
            
            
            text.text = "\(Int(electricPercent * 100))" + "%"
            
        
            green.snp.remakeConstraints { (make) in
                make.left.right.bottom.equalTo(0)
                make.height.equalTo((bg.snp.height)).multipliedBy(electricPercent)
            }
            
        }
    }

    fileprivate var bg:UIView = UIView.init()
    fileprivate var green:UIView = UIView.init()
    fileprivate var text:UILabel = UILabel.init()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
         setupBatteryView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setupBatteryView(){
    
        let imageView = UIImageView()
//        imageView.bounds =  CGRect.init(x: 0, y: 0, width: 45, height: 87)
//        imageView.center = self.center
//        imageView.contentMode = .center
        imageView.image = UIImage.init(named: "battery-empty")
        self.addSubview(imageView)
        
        
        bg.layer.cornerRadius = 2
        bg.layer.masksToBounds = true
        bg.backgroundColor = UIColor.white
        imageView.addSubview(bg)
        
        
        green.layer.cornerRadius = 2
        green.layer.masksToBounds = true
        green.backgroundColor = UIColor.green
        bg.addSubview(green)
        
        
        text.text = "100%"
        text.textColor = UIColor.white
        text.textAlignment = .center
        self.addSubview(text)
        
        
        
        imageView.snp.makeConstraints { (make) in
            make.center.equalTo(self)
            make.size.equalTo(CGSize.init(width: 45, height: 87))
        }
        
        
        bg.snp.makeConstraints { (make) in
            make.right.bottom.equalTo(-3)
            make.left.equalTo(3)
            make.top.equalTo(9)
        }
        
        
        green.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(0)
            make.height.equalTo(bg.snp.height).multipliedBy(electricPercent)
        }
       
        
        
        text.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.snp.centerX)
            make.top.equalTo(imageView.snp.bottom).offset(0)
            make.size.equalTo(CGSize.init(width: 120, height: 35))
        }
        
    }
    
    
    
    
}
