import Foundation

class ResortsTableViewModel {
    let resorts = Bindable([ResortCellViewModel]())

    func getResorts() {
        let resort = Resort(id: 1,
                            type: 2,
                            name: "Muumimaailma",
                            height: 0,
                            numberOfSlopes: 0,
                            numberOfSlopesOpen: 0,
                            numberOfLifts: 0,
                            numberOfLiftsOpen: 0,
                            crossCountrySki: 0,
                            defaultImage: "http://52.91.11.154/skiresorts/muumimaailma/muumi1.jpg")
        let resortViewModel = MoominResortViewModel(resort)
        resorts.value = [resortViewModel]
    }
}
