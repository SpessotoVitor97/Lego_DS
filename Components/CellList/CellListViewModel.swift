//
//  CellListViewModel.swift
//  Lego_DS
//
//  Created by Vitor Spessoto on 29/06/21.
//

import Foundation

public class DefaultCellViewModel {
    
    //*************************************************
    // MARK: - Public Properties
    //*************************************************
    public var id: String?
    public var title: String
    public var cellHeight: CGFloat = UITableViewAutomaticDimension
    public var shouldHideCustomDivider: Bool = false
    
    //*************************************************
    // MARK: - Inits
    //*************************************************
    
    public init(title: String) {
        self.title = title
    }
    
    public init(id: String, cellHeight: CGFloat? = nil, title: String) {
        self.id = id
        self.title = title
        self.cellHeight = cellHeight ?? UITableViewAutomaticDimension
    }
}

//*************************************************
// MARK: - TableViewCellViewModelComposable
//*************************************************
extension DefaultCellViewModel: TableViewCellViewModelComposable {
    var identifier: String? {
        return id
    }
    
    func cellForRowAtIndexPath(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DefaultTableViewCell.identifier, for: indexPath) as? DefaultTableViewCell else {
            return nil
        }
        
        cell.viewModel = self
        cell.setup()
        
        return cell
    }
    
    func registerCellAtTableView(tableView: UITableView) {
        tableView.register(DefaultTableViewCell.nib, forCellReuseIdentifier: DefaultTableViewCell.identifier)
    }
    
    func heightForRowAtIndexPath(indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }

}
