//
//  DefaultTableViewCell.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 29/06/21.
//

import UIKit

public class DefaultTableViewCell: UITableViewCell {

    //*************************************************
    // MARK: - Outlets
    //*************************************************
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var arrowImageView: UIImageView!
    @IBOutlet private weak var customDividerView: UIView!
    
    //*************************************************
    // MARK: - Public Properties
    //*************************************************
    public var viewModel: DefaultCellViewModel?
    
    //*************************************************
    // MARK: - Lifecycle
    //*************************************************
    public override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        backgroundColor = UIColor(hexString: "#FFFFFF")
    }
    
    //*************************************************
    // MARK: - Public methods
    //*************************************************
    public func setup() {
        guard let viewModel = viewModel else {
            return
        }

        let titleAttr = NSAttributedString.attributes(style: .defaultText, color: StyleGuide.Color.primaryText)
        let titleText = NSMutableAttributedString(string: viewModel.title, attributes: titleAttr)

        titleLabel.attributedText = titleText
        customDividerView.isHidden = viewModel.shouldHideCustomDivider
    }
    
    //*************************************************
    // MARK: - Private methods
    //*************************************************
    private func setupLayout() {
        selectionStyle = .default
    }
    
}
