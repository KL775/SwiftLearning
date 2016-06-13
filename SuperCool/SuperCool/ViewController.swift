//
//  ViewController.swift
//  SuperCool
//
//  Created by Kevin on 6/12/16.
//  Copyright © 2016 SuperCool2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UncoolButton: UIButton!
    @IBOutlet weak var CoolLogo: UIImageView!
    @IBOutlet weak var CoolBG: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makemenotsouncool(sender: AnyObject) { //This function launches an action when button is clicked
        CoolLogo.hidden = false
        //Logo is not hidden
        CoolBG.hidden = false
        //Logo is not hidden
        UncoolButton.hidden = true
        //Hide Button
    }

}

