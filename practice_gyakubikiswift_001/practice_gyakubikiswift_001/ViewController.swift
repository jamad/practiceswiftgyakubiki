//
//  ViewController.swift
//  practice_gyakubikiswift_001
//
//  Created by J on 26/12/2016.
//  Copyright © 2016 J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
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
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
