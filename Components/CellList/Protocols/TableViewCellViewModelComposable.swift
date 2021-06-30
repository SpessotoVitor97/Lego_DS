//
//  TableViewCellViewModelComposable.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 29/06/21.
//

import UIKit

protocol TableViewCellViewModelComposable {
    
    /// TableViewCellDisplayable identifier. Do not confuse with ReuseIdentifier
    var identifier: String? { get }
    
    /// Method that returns the UITableViewCell for indexPath in tableView
    ///
    /// - Parameters:
    ///   - tableView: The UITableView where the cell has been registered and will be displayed
    ///   - indexPath: The IndexPath where the cell will be displayed
    /// - Returns: UITableViewCell for IndexPath in UITableView
    func cellForRowAtIndexPath(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell?
    
    /// Method that register the builder's cell to the given UITableView
    ///
    /// - Parameter tableView: The UITableView where the cell should be registered
    func registerCellAtTableView(tableView: UITableView)
    
    /// Method that returns the height for the cell in the IndexPath
    ///
    /// - Parameter indexPath: The IndexPath where the cell will be displayed
    /// - Returns: The height for the cell
    func heightForRowAtIndexPath(indexPath: IndexPath) -> CGFloat
}
