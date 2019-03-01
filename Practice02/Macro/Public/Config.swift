//
//  Config.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/1.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

// 存放 主要全局信息

#if PRACTICEDEV
let ROOT_URL = "this is a dev target"
#elseif PRACTICETEST
let ROOT_URL = "this is a test target"
#else
let ROOT_URL = "this is a normal target"
#endif



