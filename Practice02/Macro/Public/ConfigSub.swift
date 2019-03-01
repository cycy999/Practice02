//
//  ConfigSub.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/1.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

// 存放 次要全局信息

let screen:UIScreen = UIScreen.main
let DEVICE_RECT:CGRect = screen.bounds
let DEVICE_WIDTH:CGFloat = DEVICE_RECT.width
let DEVICE_HEIGHT:CGFloat = DEVICE_RECT.height


let isPhone5s = DEVICE_WIDTH == 320 //320:568, 320:480
let isPhone6 = DEVICE_RECT.size == CGSize(width: 375, height: 667)
let isPhone6p = DEVICE_RECT.size == CGSize(width: 414, height: 736)
let isPhoneX = DEVICE_HEIGHT == 812 //375:812

let DEVICE_STATUSHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height//iPhoneX：44；20；状态栏高度，横屏32

let DEVICE_BOTTOMHeight: CGFloat = isPhoneX ? 34 : 0//底部tabbar区域高度，p横屏为 21
