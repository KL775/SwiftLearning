//
//  ViewController.swift
//  My Little Monster
//
//  Created by Kevin on 7/10/16.
//  Copyright © 2016 pebbles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var golemImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imgArr = [UIImage]()
        for x in 1...4 {
            let tempImg = UIImage(named: "idle\(x).png")
            imgArr.append(tempImg!)
        }
        
        golemImg.animationImages = imgArr
        golemImg.animationDuration = 0.8
        golemImg.animationRepeatCount = 0
        golemImg.startAnimating()
    }

}

