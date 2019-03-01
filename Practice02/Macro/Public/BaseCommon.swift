//
//  BaseCommon.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/1.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

class BaseCommon {
    
    /**
     保存UserDefaults
     
     - parameter name: 名称
     - parameter obj:  值
     */
    class func setUserDefaults(_ name:String, obj:AnyObject) {
        let defaults = UserDefaults.standard
        defaults.set(obj, forKey: name)
        defaults.synchronize()
    }
    
    /**
     获取UserDefaults的值
     
     - parameter name: 名称
     
     - returns: 值
     */
    class func getUserDefaults(_ name:String) -> AnyObject {
        let defaults = UserDefaults.standard
        if let object = defaults.object(forKey: name) {
            return object as AnyObject
        } else {
            return "" as AnyObject
        }
    }
    
    /**
     获取unid唯一码
     1EC0BB5E-7033-41CA-81EF-DE3D87340C0F
     - returns: unid
     */
    class func getUnid() -> String {
        return UUID().uuidString
    }
}
