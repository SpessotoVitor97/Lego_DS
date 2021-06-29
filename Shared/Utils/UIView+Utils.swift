//
//  UIView+Utils.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 28/06/21.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
