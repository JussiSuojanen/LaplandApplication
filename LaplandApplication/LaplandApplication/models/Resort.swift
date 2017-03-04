
struct Resort {
    let id: Int
    let type: Int
    let name: String
    let height: Int
    let numberOfSlopes: Int
    let numberOfSlopesOpen: Int
    let numberOfLifts: Int
    let numberOfLiftsOpen: Int
    let crossCountrySki: Int
    let defaultImage: String
}

/// Mark: - extension Resort
extension Resort {
    init?(json: JSON) {
        guard let id = json["id"] as? Int,
            let type = json["type"] as? Int,
            let name = json["name"] as? String,
            let height = json["height"] as? Int,
            let numberOfSlopes = json["numberOfSlopes"] as? Int,
            let numberOfSlopesOpen = json["numberOfSlopesOpen"] as? Int,
            let numberOfLifts = json["numberOfLifts"] as? Int,
            let numberOfLiftsOpen = json["numberOfLiftsOpen"] as? Int,
            let crossCountrySki = json["crossCountrySki"] as? Int,
            let defaultImage = json["defaultImage"] as? String else {
                return nil
        }
        self.id = id
        self.type = type
        self.name = name
        self.height = height
        self.numberOfSlopes = numberOfSlopes
        self.numberOfSlopesOpen = numberOfSlopesOpen
        self.numberOfLifts = numberOfLifts
        self.numberOfLiftsOpen = numberOfLiftsOpen
        self.crossCountrySki = crossCountrySki
        self.defaultImage = defaultImage
    }
}
