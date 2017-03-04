import Foundation

class ResortsTableViewModel {
    let resorts = Bindable([ResortCellViewModel]())
    let appServerClient = AppServerClient()

    func getResorts() {
        appServerClient.getResorts { [weak self] result in
            switch result {
            case .success(let resorts):
                self?.resorts.value = resorts.flatMap { SkiResortViewModel($0)}
                let resort = Resort(id: 1,
                                    type: 2,
                                    name: "Muumimaailma",
                                    height: 0,
                                    numberOfSlopes: 0,
                                    numberOfSlopesOpen: 0,
                                    numberOfLifts: 0,
                                    numberOfLiftsOpen: 0,
                                    crossCountrySki: 0,
                                    defaultImage: "http://swiftyjimmy.com/skiresorts/muumimaailma/muumi1.jpg")
                let resortViewModel = MoominResortViewModel(resort)
                self?.resorts.value.append(resortViewModel);
            case .failure(_):
                break
            }
        }

    }
}
