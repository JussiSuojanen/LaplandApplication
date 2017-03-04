//
//  AppServerClient.swift
//  LaplandApplication
//
//  Created by Jussi Suojanen on 04/03/2017.
//  Copyright © 2017 try! Swift. All rights reserved.
//

import Alamofire

enum Result<T> {
    case success(T)
    case failure(Error?)
}


class AppServerClient {

    typealias GetResortsResult = Result<[Resort]>
    typealias GetResortsCompletion = (_ completion: GetResortsResult) -> Void

    func getResorts(_ completion: @escaping GetResortsCompletion) {
        Alamofire.request("http://0.0.0.0:8080/listResorts")
            .validate()
            .responseJSON { response in
            switch response.result {
            case .success:
                guard let jsonArray = response.result.value as? [JSON] else {
                    completion(.failure(nil))
                    return
                }

                completion(.success( jsonArray.flatMap { Resort(json: $0) }))
            case .failure:
                completion(.failure(nil))
            }
        }
    }
}
