//
//  NSAttributedString+Utils.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 29/06/21.
//

import Foundation

extension NSAttributedString {
    static func attributes(style: StyleGuide.Text, color: UIColor = StyleGuide.Color.primaryText) -> [NSAttributedString.Key: Any] {
        var attributes = [NSAttributedString.Key: Any]()
        attributes[NSAttributedString.Key.font] = style.font
        attributes[NSAttributedString.Key.foregroundColor] = color
        
        return attributes
    }
}
