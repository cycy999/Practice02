//
//  BaseNotification.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/1.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

class BaseNotification: NSObject {
    
    func postNotification(name: NSNotification.Name, object: Any?, userInfo: [AnyHashable : Any]?) {
        NotificationCenter.default.post(name: name, object: object, userInfo: userInfo)
    }
    
    func addObserverNotification(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?) {
        NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: object)
    }
}
