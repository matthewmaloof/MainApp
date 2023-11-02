//
//  ActualNetworkService.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import Alamofire

public class ActualNetworkService: NetworkServiceProtocol {
    public init () {}
    func fetchIPInfo(completion: @escaping (Result<IPInfo, Error>) -> Void) {
        let url = "https://ipapi.co/json/"
        AF.request(url).responseDecodable(of: IPInfo.self) { response in
            switch response.result {
            case .success(let ipInfo):
                completion(.success(ipInfo))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
