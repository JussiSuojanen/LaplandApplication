//
//  DetailViewModel.swift
//  LaplandApplication
//
//  Created by Jussi Suojanen on 04/03/2017.
//  Copyright © 2017 try! Swift. All rights reserved.
//

struct DetailViewModel {
    var name: String
    var image: String
    var height: String
    var numberOfSlopes: String
    var numberOfSlopesOpen: String
    var numberOfLifts: String
    var numberOfLiftsOpen: String
    var crossCountrySki: String
}


extension DetailViewModel {
    init(_ resort: Resort) {
        self.name = resort.name
        self.image = resort.defaultImage
        self.height = "Height: \(resort.height) m"
        self.numberOfSlopes = "Slopes: \(resort.numberOfSlopes)"
        self.numberOfSlopesOpen = "Slopes open: \(resort.numberOfSlopesOpen)"
        self.numberOfLifts = "Lifts: \(resort.numberOfLifts)"
        self.numberOfLiftsOpen = "Lifts open: \(resort.numberOfLiftsOpen)"
        self.crossCountrySki = "Crosscountry skiing: \(resort.crossCountrySki) km"
    }
}
