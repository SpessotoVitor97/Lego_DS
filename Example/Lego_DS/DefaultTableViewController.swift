//
//  DefaultTableViewController.swift
//  Lego_DS_Example
//
//  Created by Vitor Spessoto on 29/06/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import Lego_DS

class DefaultTableViewController: UITableViewController {

    @IBOutlet weak var cell: DefaultTableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DefaultTableViewCell.nib, forCellReuseIdentifier: DefaultTableViewCell.identifier)
        
        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DefaultTableViewCell.identifier, for: indexPath) as! DefaultTableViewCell
        let viewModel = DefaultCellViewModel(title: "Default Cell \(indexPath.row + 1)")
        cell.viewModel = viewModel
        cell.setup()
        
        return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }

}
