//
//  UIColor+Extension.swift
//  Practice02
//
//  Created by 陈岩 on 2019/3/1.
//  Copyright © 2019 陈岩. All rights reserved.
//

import UIKit

extension UIColor {

    class func getColor(_ colorCode: String, alpha: Float = 1.0) -> UIColor {
        let scanner = Scanner(string:colorCode)
        var color:UInt32 = 0;
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = CGFloat(Float(Int(color >> 16) & mask)/255.0)
        let g = CGFloat(Float(Int(color >> 8) & mask)/255.0)
        let b = CGFloat(Float(Int(color) & mask)/255.0)
        
        return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
    }
    
    //字体默认的颜色
    class func fontDefaultColor() -> UIColor {
        return self.getColor("333333")
    }
    
    //字体普通灰色
    class func fontGrayColor() -> UIColor {
        return self.getColor("878787")
    }
    
    //字体通用绿色
    class func fontGreenColor() -> UIColor {
        return self.getColor("5fbc86")
    }
    
    //字体通用黄色
    class func fontYellowColor() -> UIColor {
        return self.getColor("f7a95a")
    }
    
    //字体通用红色
    class func fontRedColor() -> UIColor {
        return self.getColor("f2605c")
    }
    
    //字体通用橙色
    class func fontOrangeColor() -> UIColor {
        return self.getColor("ffb204")
    }
    
    //分隔线的颜色
    class func separatorColor() -> UIColor {
        return self.getColor("efeff4")
    }
    
    //mask弹出层的颜色
    class func maskColor() -> UIColor {
        return UIColor(white:0, alpha: 0.6)
    }
    
    class func viewBackGroundColor() -> UIColor {
        return self.getColor("efeff4")
    }
    
    class func lineColor() -> UIColor {
        return self.getColor("dfdfe4")
    }
    
    class func darkGreenColor() -> UIColor {
        return UIColor(red: 0, green: 100/255, blue: 0, alpha: 0)
    }
    
    //字体通用浅灰色，一般用于日期
    class func fontDateColor()-> UIColor {
        return self.getColor("cccccc")
    }
    
    class func orangColor()-> UIColor {
        return self.getColor("f7a95a")
    }
    
    class func gradientColors(bounds: CGRect, colors: [UIColor]) -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map{ $0.cgColor }
        return gradientLayer
    }
}
