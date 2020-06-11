//
//  Extension-Value.swift
//  
//
//  Created by Changwan on 2020/3/30.
//  Copyright © 2020 Lianyungang Changwan Network Technology Co., Ltd.. All rights reserved.
//

import Foundation
import UIKit

extension Int {
    
    var scale: CGFloat {
        return CGFloat(self) * UIScreen.screenWidth / 375
    }
}

extension CGFloat {
    
    var scale: CGFloat {
        return self * UIScreen.screenWidth / 375
    }
}

extension Double {
    
    var scale: CGFloat {
        return CGFloat(self) * UIScreen.screenWidth / 375
    }
    
    public static func randomDoubleNumber(lower: Double = 0,upper: Double = 100) -> Double {
        return (Double(arc4random())/Double(UInt32.max))*(upper - lower) + lower
    }
}

extension Double {
    
    /// 保留小数，不四舍五入
    ///
    /// - Parameter afterPoint: 保留的小数位
    /// - Parameter hasTail: 是否需要保留小数位的零
    /// - Returns: 返回的字符串
    func notRounding(_ afterPoint: Int16, hasTail: Bool = true) -> String {
        var roundingMode: NSDecimalNumber.RoundingMode = .down
        if self < 0 {
            roundingMode = .up
        }
        let roundingBehavior = NSDecimalNumberHandler(roundingMode: roundingMode,
                                                      scale: afterPoint,
                                                      raiseOnExactness: false,
                                                      raiseOnOverflow: false,
                                                      raiseOnUnderflow: false,
                                                      raiseOnDivideByZero: false)
        let ouncesDecimal = NSDecimalNumber(value: self)
        let roundedOunces = ouncesDecimal.rounding(accordingToBehavior: roundingBehavior)
        if afterPoint > 0 {
            if hasTail {
                return String(format: "%.\(afterPoint)f", roundedOunces.doubleValue)
            }
        }
        return "\(roundedOunces)"
    }
    
    func notRounding_double(_ afterPoint: Int16, hasTail: Bool = true) -> Double {
        var roundingMode: NSDecimalNumber.RoundingMode = .down
        if self < 0 {
            roundingMode = .up
        }
        let roundingBehavior = NSDecimalNumberHandler(roundingMode: roundingMode,
                                                      scale: afterPoint,
                                                      raiseOnExactness: false,
                                                      raiseOnOverflow: false,
                                                      raiseOnUnderflow: false,
                                                      raiseOnDivideByZero: false)
        let ouncesDecimal = NSDecimalNumber(value: self)
        let roundedOunces = ouncesDecimal.rounding(accordingToBehavior: roundingBehavior)
        if afterPoint > 0 {
            if hasTail {
                return roundedOunces.doubleValue
            }
        }
        return roundedOunces.doubleValue
    }
}
