import Foundation

class ResortsTableViewModel {
    let resorts = Bindable([ResortCellViewModel]())
    let appServerClient = AppServerClient()

    func getResorts() {
        appServerClient.getResorts { [weak self] result in
            switch result {
            case .success(let resorts):
                self?.resorts.value = resorts.flatMap { SkiResortViewModel($0)}
                let moominResort = Resort(id: 1,
                                    type: 2,
                                    name: "Muumimaailma",
                                    height: 0,
                                    numberOfSlopes: 0,
                                    numberOfSlopesOpen: 0,
                                    numberOfLifts: 0,
                                    numberOfLiftsOpen: 0,
                                    crossCountrySki: 0,
                                    defaultImage: "http://swiftyjimmy.com/skiresorts/muumimaailma/muumi1.jpg")
                let moominResortViewModel = MoominResortViewModel(moominResort)
                self?.resorts.value.append(moominResortViewModel);
                let santaResort = Resort(id: 1,
                                          type: 2,
                                          name: "SantaPark",
                                          height: 0,
                                          numberOfSlopes: 0,
                                          numberOfSlopesOpen: 0,
                                          numberOfLifts: 0,
                                          numberOfLiftsOpen: 0,
                                          crossCountrySki: 0,
                                          defaultImage: "http://swiftyjimmy.com/skiresorts/muumimaailma/muumi1.jpg")
                let santaResortViewModel = SantaResortViewModel(santaResort)
                self?.resorts.value.append(santaResortViewModel);
            case .failure(_):
                break
            }
        }

    }
}
