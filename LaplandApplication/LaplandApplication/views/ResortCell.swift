//
//  ResortCell.swift
//  LaplandApplication
//
//  Created by Saija Saarenpää on 04/03/2017.
//  Copyright © 2017 try! Swift. All rights reserved.
//

import UIKit
import AlamofireImage

class ResortCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var resortImageView: UIImageView!

    var viewModel: ResortCellViewModel? {
        didSet {
            bindViewModel()
        }
    }

    private func bindViewModel() {
        nameLabel?.text = viewModel?.name
        guard let imageUrlString = viewModel?.image,
            let imageUrl = URL(string: imageUrlString) else {
                return
        }
        resortImageView.af_setImage(withURL: imageUrl, placeholderImage: nil, filter: nil, progress: nil, progressQueue: DispatchQueue.main, imageTransition: .crossDissolve(0.2), runImageTransitionIfCached: true, completion: { response in
            if let _ = response.result.value {
                print("image downloaded!")
            } else {
                debugPrint(response.result)
            }
        })
    }
}
