//
//  ResortTableViewController.swift
//  LaplandApplication
//
//  Created by Saija Saarenpää on 04/03/2017.
//  Copyright © 2017 try! Swift. All rights reserved.
//

import UIKit

class ResortTableViewController: UITableViewController {

    let viewModel: ResortsTableViewModel = ResortsTableViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - UITableViewDataSource
extension ResortTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.resorts.value.count
    }

    override func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
