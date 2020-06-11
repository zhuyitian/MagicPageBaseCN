//
//  Extension-String.swift
//  
//
//  Created by Changwan on 2020/3/30.
//  Copyright © 2020 Lianyungang Changwan Network Technology Co., Ltd.. All rights reserved.
//

import Foundation
import UIKit
import SwiftyUserDefaults
    

extension String {

    public func width(font: UIFont, height: CGFloat) -> CGFloat {
        let option: NSStringDrawingOptions = .usesLineFragmentOrigin
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        return ceil(self.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: height), options: option, attributes: attributes, context: nil).size.width)
    }

    public func height(font: UIFont, width: CGFloat) -> CGFloat {
        let option: NSStringDrawingOptions = .usesLineFragmentOrigin
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        return ceil(self.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: option, attributes: attributes, context: nil).size.height)
    }
}

extension String {
    
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
