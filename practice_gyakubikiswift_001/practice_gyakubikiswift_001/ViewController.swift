//
//  ViewController.swift
//  practice_gyakubikiswift_001
//
//  Created by J on 26/12/2016.
//  Copyright © 2016 J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myButton: UIButton! // button declaration
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myButton = UIButton()
        view.addSubview(myButton)
        
        myButton.frame.size=CGSize(width: 200, height: 50)
        myButton.center=CGPoint(x: view.bounds.width/2, y: view.bounds.height/2) // position after size
        
        myButton.backgroundColor = UIColor.red// ボタンの背景色を設定.
        myButton.setTitle("ボタン(通常)", for: .normal)
        myButton.setTitle("ボタン(押された時)", for: .highlighted)
        myButton.setTitleColor(UIColor.white, for: .normal)
        myButton.setTitleColor(UIColor.black, for: .highlighted)
        
        myButton.layer.masksToBounds = true // ボタンの枠を丸くする.
        myButton.layer.cornerRadius = 20.0
        
        myButton.tag = 1// ボタンにタグ
        
        // イベントを追加する
        myButton.addTarget(self, action: #selector(ViewController.onClickIt(sender:)), for: .touchUpInside)
    }
    
    internal func onClickIt(sender: UIButton) {
        print("onClickMyButton:");
        print("sender.currentTitle: \(sender.currentTitle)")
        print("sender.tag: \(sender.tag)")
    }
        
        /*
        let label=UILabel()
        view.addSubview(label)
        view.backgroundColor=UIColor.cyan
        
        
        label.text="helloWorld"
        label.textAlignment=NSTextAlignment.center
        label.frame.size=CGSize(width: 100, height: 50) // size first
        label.center=CGPoint(x: view.bounds.width/2, y: view.bounds.height/2) // position after size
        
        label.backgroundColor=UIColor.orange    // backcolor
        label.textColor=UIColor.white           // forecolor
        label.shadowColor=UIColor.blue          // shadowcolor
        
        label.layer.masksToBounds=true          // round corner on
        label.layer.cornerRadius=20             // round corner radius
        */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
