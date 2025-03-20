//
//  ViewController.swift
//  Simple
//
//  Created by Tom Yu on 2025/3/20.
//

import UIKit
import SimplePod

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Cat().run();
        Dog().eat();
        Rose().bloom();
        AppleTree().fruit();
    }
}

