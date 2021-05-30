//
//  ViewController.swift
//  SimpleSwift
//
//  Created by Tom Yu on 2021/5/31.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Cat().run();
        Dog().eat();
        Rose().bloom();
        AppleTree().fruit();
    }
}

