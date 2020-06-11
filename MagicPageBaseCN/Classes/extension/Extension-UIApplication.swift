//
//  Extension-UIApplication.swift
//  
//
//  Created by Changwan on 2020/3/30.
//  Copyright © 2020 Lianyungang Changwan Network Technology Co., Ltd.. All rights reserved.
//

import UIKit

extension UIApplication {

    static var appName: String {
        guard let dic = Bundle.main.infoDictionary else { return "" }
        guard let displayName = dic["CFBundleDisplayName"] as? String else { return "" }
        return displayName
    }
}

extension UIApplication {
    
    static func callAppStore(_ appid: String) {
        let string = "itms-apps://itunes.apple.com/cn/app/id\(appid)?mt=8"
        if let url = URL(string: string) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: { (result) in
                    debugPrint("call AppStore - \(result)")
                })
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
}
