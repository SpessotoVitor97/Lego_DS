//
//  StyleGuide.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 28/06/21.
//

import UIKit

public struct StyleGuide {
    
    //*************************************************
    // MARK: - Public structs
    //*************************************************
    struct Button {
        
        enum Font {
            case `default`
            
            var font: UIFont {
                switch self {
                case .default:
                    return StyleGuide.Text.defaultButtonText.font
                }
            }
        }
        
        enum TextColor {
            case primary
            case primaryDisabled
            case secondary
            case secondaryDisabled
            
            var color: UIColor {
                switch self {
                case .primary:
                    return StyleGuide.Color.primaryText
                case .primaryDisabled:
                    return StyleGuide.Color.primaryTextDisabled
                case .secondary:
                    return StyleGuide.Color.secondaryText
                case .secondaryDisabled:
                    return StyleGuide.Color.secondaryTextDisabled
                }
            }
        }
        
        enum BackgroundColor {
            case primary
            case secondary
            
            var normal: UIColor {
                switch self {
                case .secondary:
                    return StyleGuide.Color.secondaryBackgroundDefault
                default:
                    return StyleGuide.Color.primaryBackgroundDefault
                }
            }
            
            var highlighted: UIColor {
                switch self {
                case .secondary:
                    return StyleGuide.Color.secondaryBackgroundHighlighted
                default:
                    return StyleGuide.Color.primaryBackgroundHighlighted
                }
            }
            
            var selected: UIColor {
                switch self {
                case .secondary:
                    return StyleGuide.Color.secondaryBackgroundSelected
                default:
                    return StyleGuide.Color.primaryBackgroundSelected
                }
            }
            
            var disabled: UIColor {
                switch self {
                case .secondary:
                    return StyleGuide.Color.secondaryBackgroundDisabled
                default:
                    return StyleGuide.Color.primaryBackgroundDisabled
                }
            }
        }

    }
    
    //*************************************************
    // MARK: - Internal helpers
    //*************************************************
    internal enum Text {
        case defaultButtonText
        
        var font: UIFont {
            switch self {
            case .defaultButtonText:
                return Font.default(size: 17)
            }
        }
    }
    
    internal struct Font {
        
        //FIXME: Not finding Custom font
        static func `default`(size: CGFloat) -> UIFont {
            if let font = UIFont(name: "Montserrat-ExtraBold", size: size) {
                return font
            } else {
                print("Something wrong happened while attempting to use the custom font 'Montserrat-ExtraBold'. We will use the 'systemFont(ofSize:\(size), weight: bold)' instead.")
                return .systemFont(ofSize: size, weight: .bold)
            }
        }
    }
    
    internal struct Color {
        static var primaryText = UIColor(hexString: "#18191F")
        static var primaryTextDisabled = UIColor(hexString: "#F4F5F7")
        
        static var secondaryText = UIColor(hexString: "#FFFFFF")
        static var secondaryTextDisabled = UIColor(hexString: "#969BAB")
        
        static var primaryBackgroundDefault = UIColor(hexString: "#FFBD12")
        static var primaryBackgroundHighlighted = UIColor(hexString: "#FFF4CC")
        static var primaryBackgroundSelected = UIColor(hexString: "#FFD465")
        static var primaryBackgroundDisabled = UIColor(hexString: "#9FA4B4")
        
        static var secondaryBackgroundDefault = UIColor(hexString: "#18191F")
        static var secondaryBackgroundHighlighted = UIColor(hexString: "#9FA4B4")
        static var secondaryBackgroundSelected = UIColor(hexString: "#474A57")
        static var secondaryBackgroundDisabled = UIColor(hexString: "#F4F5F7")
    }
    
    internal struct Padding {
        static var top: CGFloat = 16
        static var bottom: CGFloat = 16
        static var trailing: CGFloat = 16
        static var leading: CGFloat = 16
        static var margins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    }
}
