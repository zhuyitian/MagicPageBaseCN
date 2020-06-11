//
//  Extension-Device.swift
//  
//
//  Created by Changwan on 2020/3/20.
//  Copyright © 2020 Lianyungang Changwan Network Technology Co., Ltd.. All rights reserved.
//

import Foundation

extension UIDevice {
    
    public static var deviceID: String? = {
        return UIDevice.current.identifierForVendor?.uuidString
    }()
    
    public static let isSimulator: Bool = {
        var isSim = false
        #if arch(i386) || arch(x86_64)
        isSim = true
        #endif
        return isSim
    }()
}
