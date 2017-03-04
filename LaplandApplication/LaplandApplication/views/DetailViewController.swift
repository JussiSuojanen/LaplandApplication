//
//  DetailViewController.swift
//  LaplandApplication
//
//  Created by Jussi Suojanen on 04/03/2017.
//  Copyright © 2017 try! Swift. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSlopeNumber: UILabel!
    @IBOutlet weak var labelSlopesOpen: UILabel!
    @IBOutlet weak var labelLiftNumber: UILabel!
    @IBOutlet weak var labelLiftsOpen: UILabel!
    @IBOutlet weak var labelCrossCountryLinesLength: UILabel!

    var viewModel: DetailViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        bindViewModel()
    }

    func bindViewModel() {
        guard let viewModel = viewModel else {
            return
        }
        labelName.text = viewModel.name
        labelSlopeNumber.text = viewModel.numberOfSlopes
        labelSlopesOpen.text = viewModel.numberOfSlopesOpen
        labelLiftNumber.text = viewModel.numberOfLifts
        labelLiftsOpen.text = viewModel.numberOfLiftsOpen
        labelCrossCountryLinesLength.text = viewModel.numberOfLiftsOpen

        if let url = URL(string: viewModel.image) {
            imageView.af_setImage(withURL: url)
        }
    }

}
