//
//  Extension-UIColor.swift
//  
//
//  Created by Changwan on 2020/3/30.
//  Copyright © 2020 Lianyungang Changwan Network Technology Co., Ltd.. All rights reserved.
//

import SwifterSwift

extension UIColor {
    
    public static var main: UIColor {
        return UIColor(hexString: "#335DEC")!
    }
    
    public static var lightMain: UIColor {
        return UIColor(hexString: "#335DEC", transparency: 0.9)!
    }
    
    public static var green: UIColor {
        return UIColor(hexString: "#12CC85")!
    }
    
    public static var red: UIColor {
        return UIColor(hexString: "#FF6C5B")!
    }
    
    public static var yellow: UIColor {
        return UIColor(hexString: "#FAC00F")!
    }
    
    public static var blue: UIColor {
        return UIColor(hexString: "#77B9F7")!
    }
    
    public static var lightBlue: UIColor {
        return UIColor(hexString: "#77B9F7", transparency: 0.3)!
    }
    
    public static var black: UIColor {
        return UIColor(hexString: "#333333")!
    }
    
    public static var lightBlack: UIColor {
        return UIColor(white: 0, alpha: 0.7)
    }
    
    public static var darkGray: UIColor {
        return UIColor(hexString: "#777777")!
    }
    
    public static var lightGray: UIColor {
        return UIColor(hexString: "#EEEEEE")!
    }
    
    public static var gray: UIColor {
        return UIColor(hexString: "#999999")!
    }
    
    public static var disable: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(hexString: "#CECECE")!
        } else {
            return UIColor(hexString: "#CECECE")!
        }
    }
    
    public static var bg: UIColor {
        return UIColor(hexString: "#FFFFFF")!
    }
}
