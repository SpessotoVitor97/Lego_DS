//
//  Reusable.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 29/06/21.
//

import Foundation

public protocol Reusable {
    
}

public extension Reusable {
    
    /// Returns the UINib with the name of the class.
    public static var nib: UINib {
        let name = String(describing: Self.self)
        guard let reference = self as? AnyClass else {
            fatalError("Error getting the class implementing Reusable protocol.")
        }
        
        let bundle = Bundle(for: reference)
        return UINib(nibName: name, bundle: bundle)
    }
    
    /// Returns the identifier based on the name of the class.
    public static var identifier: String {
        return String(describing: Self.self)
    }
}

extension UITableViewCell: Reusable {

}
