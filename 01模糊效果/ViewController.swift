//
//  ViewController.swift
//  01模糊效果
//
//  Created by 王卓 on 15/7/22.
//  Copyright © 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BackGround: UIImageView!
    @IBOutlet weak var Icon: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //设置圆角
        Icon.layer.cornerRadius=100
        Icon.clipsToBounds=true
        
        //实例化模糊效果类，参数为风格
        let blurEffert=UIBlurEffect(style: UIBlurEffectStyle.ExtraLight)
        //实例化一个View
        let EffertView=UIVisualEffectView(effect: blurEffert)
        EffertView.alpha=0.6
        //设置view的大小
        EffertView.frame.size=CGSize(width: view.frame.width, height: view.frame.height)
        //加入视图
        BackGround.addSubview(EffertView)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

