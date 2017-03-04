//
//  ResortTableViewController.swift
//  LaplandApplication
//
//  Created by Saija Saarenpää on 04/03/2017.
//  Copyright © 2017 try! Swift. All rights reserved.
//

import UIKit

class ResortsTableViewController: UITableViewController {

    let viewModel: ResortsTableViewModel = ResortsTableViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        viewModel.getResorts()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bindViewModel() {
        viewModel.resorts.bindAndFire() { [weak self] _ in
            self?.tableView?.reloadData()
        }
    }
}

// MARK: - UITableViewDataSource
extension ResortsTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.resorts.value.count
    }

    override func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let resortCell = tableView.dequeueReusableCell(withIdentifier: "resortCell") as? ResortCell else {
            return UITableViewCell()
        }
        let resortViewModel = viewModel.resorts.value[indexPath.row] as? ResortCellViewModel
        switch resortViewModel?.type {
        case 1:
            resortCell.viewModel = resortViewModel as? SkiResortViewModel
        case 2:
            resortCell.viewModel = resortViewModel as? MoominResortViewModel
        case 3:
            resortCell.viewModel = resortViewModel as? SantaResortViewModel
        default:
            return UITableViewCell()
        }
        return resortCell
    }
}
