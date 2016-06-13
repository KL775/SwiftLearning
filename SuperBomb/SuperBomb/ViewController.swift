//
//  ViewController.swift
//  SuperBomb
//
//  Created by Kevin on 6/13/16.
//  Copyright © 2016 SuperCool2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RedBomb: UIImageView!
    @IBOutlet weak var BlueBomb: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func HideRed(sender: AnyObject) {
        RedBomb.hidden = true
    }


    @IBAction func HideBlue(sender: AnyObject) {
        BlueBomb.hidden = true
    }
}

