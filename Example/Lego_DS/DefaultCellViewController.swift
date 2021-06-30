//
//  DefaultCellViewController.swift
//  Lego_DS_Example
//
//  Created by Vitor Spessoto on 29/06/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import Lego_DS

//class DefaultCellViewController: UITableViewController {
//
//    @IBOutlet weak var tableView: UITableView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.register(DefaultTableViewCell.nib, forCellReuseIdentifier: DefaultTableViewCell.identifier)
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        tableView.reloadData()
//    }
//
//}
//
////*************************************************
//// MARK: - UITableViewDataSource
////*************************************************
//extension DefaultCellViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: DefaultTableViewCell.identifier, for: indexPath) as! DefaultTableViewCell
//        let viewModel = DefaultCellViewModel(title: "Vitor Spessoto \(indexPath.row + 1)")
//        cell.viewModel = viewModel
//        cell.setup()
//        return cell
//    }
//}
//
////*************************************************
//// MARK: - UITableViewDelegate
////*************************************************
//extension DefaultCellViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("Row \(indexPath) selected")
//    }
//}
