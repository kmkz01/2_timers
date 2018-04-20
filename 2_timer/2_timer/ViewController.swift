//
//  ViewController.swift
//  iii
//
//  Created by nishimoto_noboru on 2018/04/20.
//  Copyright © 2018年 nishimoto_noboru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     weak var timer: Timer!
    weak var timer2: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        timer=Timer.scheduledTimer(timeInterval: 5,                   //ループなら間隔 1度きりなら発動までの秒数
                target: self,                                         //メソッドを持つオブジェクト
                selector: #selector(self.timerUpdate),  //実行するメソッド
                userInfo: nil,                                        //オブジェクトに付けて送信する値
                repeats: true)                                        //繰り返し実行するかどうか
        
        timer2=Timer.scheduledTimer(timeInterval: 10,                   //ループなら間隔 1度きりなら発動までの秒数
            target: self,                                         //メソッドを持つオブジェクト
            selector: #selector(self.timerUpdate2),  //実行するメソッド
            userInfo: nil,                                        //オブジェクトに付けて送信する値
            repeats: true)
        
        }
        // Do any additional setup after loading the view, typically from a nib.
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func timerUpdate() {
        print("update")
    }
    @objc func timerUpdate2() {
        print("update!!")
    }
}

