//
//  NetworkServiceProtocol.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

protocol NetworkServiceProtocol {
    func fetchIPInfo(completion: @escaping (Result<IPInfo, Error>) -> Void)
}
