//
//  UIImage+Utils.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 28/06/21.
//

import UIKit

extension UIImage {
    
    /// Generates a UIImage with a solid background color with the given size.
    ///
    /// - Parameters:
    ///   - color: UIColor for the new image.
    ///   - size: CGSize for the new image.
    /// - Returns: UIImage with the given color and size.
    class func image(with color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage? {
        var imageSize = size
        if imageSize.width <= 0 {
            imageSize.width = 1
        }
        if imageSize.height <= 0 {
            imageSize.height = 1
        }
        
        var rect: CGRect = .zero
        rect.size = imageSize
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0)
        color.setFill()
        UIRectFill(rect)
        defer {
            UIGraphicsEndImageContext()
        }
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
