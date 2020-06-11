//
//  Extension-View.swift
//  
//
//  Created by Changwan on 2020/3/30.
//  Copyright © 2020 Lianyungang Changwan Network Technology Co., Ltd.. All rights reserved.
//

import Foundation
import Kingfisher

extension UIView {
    
    public static var reuseIdentifier: String {
        return "\(self)"
    }
}

extension UIImageView {
    
    public func setImage(_ urlString: String?, _ placeholderString: String? = nil) {
        guard var _urlString = urlString else {
            if (placeholderString == nil) {
                image = nil
            } else {
                image = UIImage(named: placeholderString!)
            }
            return;
        }
        if (_urlString.isValidUrl == false) {
            _urlString = _urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
        guard let url = URL(string: _urlString) else {
            if (placeholderString == nil) {
                image = nil
            } else {
                image = UIImage(named: placeholderString!)
            }
            return;
        }
        let resource = ImageResource(downloadURL: url)
        kf.setImage(with: resource, placeholder: placeholderString == nil ? nil : UIImage(named: placeholderString!))
    }
}

extension UIButton {
    
    public func setImage(_ urlString: String?, _ placeholderString: String? = nil) {
        guard var _urlString = urlString else {
            if (placeholderString == nil) {
                setBackgroundImage(nil, for: .normal)
            } else {
                setBackgroundImage(UIImage(named: placeholderString!), for: .normal)
            }
            return;
        }
        if (_urlString.isValidUrl == false) {
            _urlString = _urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
        guard let url = URL(string: _urlString) else {
            if (placeholderString == nil) {
                setBackgroundImage(nil, for: .normal)
            } else {
                setBackgroundImage(UIImage(named: placeholderString!), for: .normal)
            }
            return;
        }
        let resource = ImageResource(downloadURL: url)
        kf.setBackgroundImage(with: resource, for: .normal)
    }
}
