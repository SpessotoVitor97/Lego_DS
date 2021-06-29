//
//  DSButton.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 28/06/21.
//

import UIKit
public class DSButton: UIButton {
    
    //*************************************************
    // MARK: - Public Properties
    //*************************************************
    public override var isHighlighted: Bool {
        didSet {
            layer.borderColor = isHighlighted ? highlightedBorderColor : borderColor
        }
    }
    
    public override var isEnabled: Bool {
        didSet {
            self.alpha = self.isEnabled ? 1.0 : 0.5
        }
    }
    
    //*************************************************
    // MARK: - Private Properties
    //*************************************************
    private var borderColor: CGColor = UIColor(hexString: "#18191F").cgColor {
        didSet {
            layer.borderColor = borderColor
            self.setNeedsDisplay()
        }
    }
    
    private var highlightedBorderColor: CGColor = UIColor(hexString: "#18191F").cgColor {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    //*************************************************
    // MARK: - Inits
    //*************************************************
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureDefault()
//        titleLabel!.addSubview(iconImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureDefault()
//        titleLabel!.addSubview(iconImageView)
    }
    
    //*************************************************
    // MARK: - Lifecycle
    //*************************************************
//    public override func layoutSubviews() {
//        super.layoutSubviews()
//        let iconSize: CGFloat = 24
//        let iconX: CGFloat = (frame.size.width - titleLabel!.frame.size.width - iconSize - 6) / 2
//
//        iconImageView.frame = CGRect(x: iconX,
//                                  y: (frame.size.height - iconSize) / 2,
//                                  width: iconSize,
//                                  height: iconSize)
//
//    }
    
    //*************************************************
    // MARK: - Public methods
    //*************************************************
    /// Use this method to configure the DSButton
    /// - Parameters:
    ///   - style: Defines the button style
    ///   - paddingEnabled: Enable padding
    public func configure(with style: DSButtonStyle, paddingEnabled: Bool = true) {
        switch style {
        case .primaryDefault:
            configurePrimaryDefault(paddingEnabled: paddingEnabled)
            
        case .primaryArrow:
            configurePrimaryArrow(paddingEnabled: paddingEnabled)
            
        case .primaryIcon:
            configurePrimaryIcon(paddingEnabled: paddingEnabled)
            
        case .secondaryDefault:
            configureSecondaryDefault(paddingEnabled: paddingEnabled)
            
        case .secondaryArrow:
            configureSecondaryArrow(paddingEnabled: paddingEnabled)
            
        case .secondaryIcon:
            configureSecondaryIcon(paddingEnabled: paddingEnabled)
        }
    }
    
    //*************************************************
    // MARK: - Private methods
    //*************************************************
    private func configureDefault() {
        configurePrimaryDefault()
    }
    
    private func configurePrimaryDefault(paddingEnabled: Bool = true) {
        titleLabel?.font = StyleGuide.Button.Font.default.font
        titleLabel?.adjustsFontSizeToFitWidth = true
        titleLabel?.minimumScaleFactor = 0.5
        
        layer.borderWidth = 2
        cornerRadius = 16
        
        if paddingEnabled {
            titleEdgeInsets = UIEdgeInsets(top: 0, left: StyleGuide.Padding.leading, bottom: 0, right: StyleGuide.Padding.trailing)
        }
        
        setTitleColor(StyleGuide.Button.TextColor.primary.color, for: .normal)
        setTitleColor(StyleGuide.Button.TextColor.primary.color, for: .highlighted)
        setTitleColor(StyleGuide.Button.TextColor.primary.color, for: .selected)
        setTitleColor(StyleGuide.Button.TextColor.primaryDisabled.color, for: .disabled)
        
        setBackgroundColor(StyleGuide.Button.BackgroundColor.primary.normal, for: .normal)
        setBackgroundColor(StyleGuide.Button.BackgroundColor.primary.highlighted, for: .highlighted)
        setBackgroundColor(StyleGuide.Button.BackgroundColor.primary.selected, for: .selected)
        setBackgroundColor(StyleGuide.Button.BackgroundColor.primary.disabled, for: .disabled)
    }
    
    private func configurePrimaryArrow(paddingEnabled: Bool = true) {
        configurePrimaryDefault(paddingEnabled: paddingEnabled)
        setImage(UIImage(systemName: "chevron.right"), for: [])
    }
    
    private func configurePrimaryIcon(paddingEnabled: Bool = true) {
        configurePrimaryDefault(paddingEnabled: paddingEnabled)
        setImage(UIImage(systemName: "heart.fill"), for: [])
    }
    
    private func configureSecondaryDefault(paddingEnabled: Bool = true) {
        titleLabel?.font = StyleGuide.Button.Font.default.font
        
        if paddingEnabled {
            titleEdgeInsets = UIEdgeInsets(top: 0, left: StyleGuide.Padding.leading, bottom: 0, right: StyleGuide.Padding.trailing)
        }
        
        titleLabel?.adjustsFontSizeToFitWidth = true
        titleLabel?.minimumScaleFactor = 0.5
        cornerRadius = 16
        
        setTitleColor(StyleGuide.Button.TextColor.secondary.color, for: .normal)
        setTitleColor(StyleGuide.Button.TextColor.secondary.color, for: .highlighted)
        setTitleColor(StyleGuide.Button.TextColor.secondary.color, for: .selected)
        setTitleColor(StyleGuide.Button.TextColor.secondaryDisabled.color, for: .disabled)
        
        setBackgroundColor(StyleGuide.Button.BackgroundColor.secondary.normal, for: .normal)
        setBackgroundColor(StyleGuide.Button.BackgroundColor.secondary.highlighted, for: .highlighted)
        setBackgroundColor(StyleGuide.Button.BackgroundColor.secondary.selected, for: .selected)
        setBackgroundColor(StyleGuide.Button.BackgroundColor.secondary.disabled, for: .disabled)
    }
    
    private func configureSecondaryArrow(paddingEnabled: Bool = true) {
        configureSecondaryDefault(paddingEnabled: paddingEnabled)
        
        //FIXME: Not finding icons
        let icon = UIImage(named: "chevron-right")
        setImage(icon, for: [])
        imageView?.contentMode = .scaleAspectFit
//        #warning("Finish Secondary Arrow button")
    }
    
    private func configureSecondaryIcon(paddingEnabled: Bool = true) {
        configureSecondaryDefault(paddingEnabled: paddingEnabled)
        
        //FIXME: Not finding icons
        let icon = UIImage(named: "heart")
        setImage(icon, for: [])
        imageView?.contentMode = .scaleAspectFit
//        #warning("Finish Secondary Icon button")
    }
    
    private func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        let image = UIImage.image(with: color)
        self.setBackgroundImage(image, for: state)
    }
}

//*************************************************
// MARK: - Helpers
//*************************************************
public enum DSButtonStyle {
    case primaryDefault
    case primaryArrow
    case primaryIcon
    case secondaryDefault
    case secondaryArrow
    case secondaryIcon
}
