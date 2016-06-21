//
//  ViewController.swift
//  Playing with Arrays
//
//  Created by Kevin on 6/15/16.
//  Copyright © 2016 SuperCool2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bootup: UILabel!
    
    var phrases = ["Booting from Hong Kong...\n", "Establishing ephemeral linkage...\n", "Link up to puns central...\n", "30% done...\n", "70% done...\n", "Complete!!\n", "Welcome back Priskilla Honk\n"]


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        bootup.text = ""
        for element in phrases{
            var text = bootup.text!
            text += element
            bootup.text = text
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

