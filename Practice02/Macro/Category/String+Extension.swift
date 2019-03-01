//
//  String+Extension.swift
//  qingtong
//
//  Created by 陈岩 on 2018/5/14.
//  Copyright © 2018年 曾令元. All rights reserved.
//

import UIKit

extension String {
    
//    static func setAttribute(attributes: [(str: String, attributes: [String : Any]?)]) -> NSAttributedString {
//        let a = NSMutableAttributedString()
//        
//        for attribute in attributes {
//            a.append(NSAttributedString(string: attribute.str, attributes: attribute.attributes))
//        }
//       
//        return a
//    }
    
    
    /**
     let paragraphStyle = NSMutableParagraphStyle()
     paragraphStyle.lineSpacing = 8
     
     label.attributedText = String.setAttribute(attributes: [
        (str: "String", attributes: [
            NSFontAttributeName : UIFont.systemFont(ofSize: 14),
            NSForegroundColorAttributeName: UIColor.red,
            NSParagraphStyleAttributeName: paragraphStyle,
            ]),
        (str: "String", attributes: [
            NSFontAttributeName : UIFont.systemFont(ofSize: 14),
            NSForegroundColorAttributeName: UIColor.red
            ]),
        (str: "String", attributes: [
            NSFontAttributeName : UIFont.systemFont(ofSize: 14),
            NSForegroundColorAttributeName: UIColor.red
            ])
     ])
     */
    
    /*
     下划线 -- NSUnderlineStyleAttributeName
 
     let num = NSNumber(integerLiteral: NSUnderlineStyle.styleSingle.rawValue)

     let a = NSAttributedString.init(string: "点此可新增", attributes: [
     NSUnderlineStyleAttributeName:num,
     NSForegroundColorAttributeName: UIColor.getColor("45b173"),
     NSUnderlineColorAttributeName: UIColor.getColor("45b173")
     ])
     */
    
    //文本高度（和label的高度会有细微差别）
    static func getH(string:String, width:CGFloat, font: UIFont) -> CGFloat {
        let size = CGSize(width: width, height: 1000)
        let attributes = [NSAttributedString.Key.font:font]
        let option = NSStringDrawingOptions.usesLineFragmentOrigin
        let rect:CGRect = (string as NSString).boundingRect(with: size, options: option, attributes: attributes, context: nil)
        return rect.height
    }
}

