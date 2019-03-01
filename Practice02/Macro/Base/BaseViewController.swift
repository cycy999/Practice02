//
//  BaseViewController.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/1.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}

extension BaseViewController {
    
    func makeTableView() {
        if tableView == nil {
            tableView = UITableView(frame: CGRect.zero)
        }
        
    }
}
