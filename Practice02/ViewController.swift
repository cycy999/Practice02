//
//  ViewController.swift
//  Practice02
//
//  Created by 陈岩 on 2019/2/28.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

#if PRACTICEDEV
let testString = "this is a dev target"
#elseif PRACTICETEST
let testString = "this is a test target"
#else
let testString = "this is a normal target"
#endif

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        print(testString)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

