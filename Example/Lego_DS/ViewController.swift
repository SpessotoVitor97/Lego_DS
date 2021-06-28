//
//  ViewController.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 06/28/2021.
//  Copyright (c) 2021 Vitor Spessoto. All rights reserved.
//

import UIKit
import Lego_DS

class ViewController: UIViewController {
    
    @IBOutlet weak var primaryDefaultButton: DSButton!
    @IBOutlet weak var primaryDefaultButtonHighlighted: DSButton!
    @IBOutlet weak var primaryDefaultButtonSelected: DSButton!
    @IBOutlet weak var primaryDefaultButtonDisabled: DSButton!
    
    @IBOutlet weak var secondaryDefaultButton: DSButton!
    @IBOutlet weak var secondaryDefaultButtonHighlighted: DSButton!
    @IBOutlet weak var secondaryDefaultButtonSelected: DSButton!
    @IBOutlet weak var secondaryDefaultButtonDisabled: DSButton!
    
    @IBOutlet weak var primaryArrowButton: DSButton!
    @IBOutlet weak var primaryIconButton: DSButton!
    
//    @IBOutlet weak var secondaryArrowButton: DSButton!
//    @IBOutlet weak var secondaryIconButton: DSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPrimaryButtons()
        setupSecondaryButtons()
        
        for family: String in UIFont.familyNames {
            print(family)
            for names: String in UIFont.fontNames(forFamilyName: family) {
                print("== \(names)")
            }
        }
    }
    
    func setupPrimaryButtons() {
        primaryDefaultButton.configure(with: .primaryDefault)
        primaryDefaultButton.setTitle("Normal", for: .normal)
        
        primaryDefaultButtonHighlighted.configure(with: .primaryDefault)
        primaryDefaultButtonHighlighted.setTitle("Hover", for: .highlighted)
        primaryDefaultButtonHighlighted.isHighlighted = true
        
        primaryDefaultButtonSelected.configure(with: .primaryDefault)
        primaryDefaultButtonSelected.setTitle("Pressed", for: .selected)
        primaryDefaultButtonSelected.isSelected = true
        
        primaryDefaultButtonDisabled.configure(with: .primaryDefault)
        primaryDefaultButtonDisabled.setTitle("Disabled", for: .disabled)
        primaryDefaultButtonDisabled.isEnabled = false
        
        primaryArrowButton.configure(with: .primaryArrow)
        primaryIconButton.configure(with: .primaryIcon)
    }
    
    func setupSecondaryButtons() {
        secondaryDefaultButton.configure(with: .secondaryDefault)
        secondaryDefaultButton.setTitle("Normal", for: .normal)
        
        secondaryDefaultButtonHighlighted.configure(with: .secondaryDefault)
        secondaryDefaultButtonHighlighted.setTitle("Hover", for: .highlighted)
        secondaryDefaultButtonHighlighted.isHighlighted = true
        
        secondaryDefaultButtonSelected.configure(with: .secondaryDefault)
        secondaryDefaultButtonSelected.setTitle("Pressed", for: .selected)
        secondaryDefaultButtonSelected.isSelected = true
        
        secondaryDefaultButtonDisabled.configure(with: .secondaryDefault)
        secondaryDefaultButtonDisabled.setTitle("Disabled", for: .disabled)
        secondaryDefaultButtonDisabled.isEnabled = false
        
//        secondaryArrowButton.configure(with: .secondaryArrow)
//        secondaryIconButton.configure(with: .secondaryIcon)
    }

}

