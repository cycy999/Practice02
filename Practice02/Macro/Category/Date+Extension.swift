//
//  Date+Extension.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/4.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit
import Foundation

//MARK: 注释 - 微信朋友圈 时间角标 显示实现
extension Date {
    
    //Date.usresDate(createAt:你的时间串).usresDateString
    static func usresDate(createAt: String) -> Date {
        let noticeDateFormat = DateFormatter()
        //  指定格式化方式
        noticeDateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
        //  指定本地化信息  //中文为zh_CN
        noticeDateFormat.locale = Locale(identifier: "en_US")
        //  把字符串转成时间对象
        let createAtDate = noticeDateFormat.date(from: createAt)!
        return createAtDate
    }
    
    var usresDateString: String {
        let noticeDateFormat = DateFormatter()
        //  指定本地化信息  //中文为zh_CN
        noticeDateFormat.locale = Locale(identifier: "en_US")
        if isThisYear(createAtDate: self) {
            // 日历对象
            let currentCalendar = Calendar.current
            if currentCalendar.isDateInToday(self) {
                let timeinterVal: TimeInterval = abs(self.timeIntervalSinceNow)
                if timeinterVal < 60 {
                    return "刚刚"
                } else if timeinterVal < 3600 {
                    let result = timeinterVal / 60
                    return "\(Int(result))分钟前"
                } else {
                    let result = timeinterVal / 3600
                    return "\(Int(result))小时前"
                }
            } else if currentCalendar.isDateInYesterday(self) {
                noticeDateFormat.dateFormat = "昨天 HH:mm"
            } else {
                noticeDateFormat.dateFormat = "MM-dd"
            }
        } else {
            noticeDateFormat.dateFormat = "yyyy-MM-dd"
        }
        return noticeDateFormat.string(from: self)
    }
    
    //  根据指定时间对象判断是否是今年
    private func isThisYear(createAtDate: Date) -> Bool {
        let noticeDateFormat = DateFormatter()
        //  指定格式化方式
        noticeDateFormat.dateFormat = "yyyy"
        //  指定本地化信息
        noticeDateFormat.locale = Locale(identifier: "en_US")
        //  获取发微博时间的年份
        let createAtYear = noticeDateFormat.string(from: createAtDate)
        //  获取当前时间的年份
        let currentDateYear = noticeDateFormat.string(from: Date())
        //  判断时间年份是否相同
        return createAtYear == currentDateYear
    }
}
