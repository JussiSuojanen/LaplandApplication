import Foundation

protocol ResortCellViewModel {
    var name: String { get }
    var image: String { get }
}

struct SkiResortViewModel: ResortCellViewModel {
    var name: String
    var image: String
    var height: Int
    var numberOfSlopes: Int
    var numberOfSlopesOpen: Int
    var numberOfLifts: Int
    var numberOfLiftsOpen: Int
    var crossCountrySki: Int

    init(_ resort: Resort) {
        self.name = resort.name
        self.image = resort.defaultImage
        self.height = resort.height
        self.numberOfSlopes = resort.numberOfSlopes
        self.numberOfSlopesOpen = resort.numberOfSlopesOpen
        self.numberOfLifts = resort.numberOfLifts
        self.numberOfLiftsOpen = resort.numberOfLiftsOpen
        self.crossCountrySki = resort.crossCountrySki
    }
}

struct MoominResortViewModel: ResortCellViewModel {
    var name: String
    var image: String

    init(_ resort: Resort) {
        self.name = resort.name
        self.image = resort.defaultImage
    }
}

struct SantaResortViewModel: ResortCellViewModel {
    var name: String
    var image: String

    init(_ resort: Resort) {
        self.name = resort.name
        self.image = resort.defaultImage
    }
}
