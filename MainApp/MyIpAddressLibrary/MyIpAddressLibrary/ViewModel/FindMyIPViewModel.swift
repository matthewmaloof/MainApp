// FindMyIPViewModel.swift
// FindMyIP
//
// Created by Matthew Maloof on 10/30/23.
//

import Foundation
import Combine


final class FindMyIPViewModel: ObservableObject {
    @Published var ipInfo: IPInfo?
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?

    private var networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func fetchIPInfo(completion: (() -> Void)? = nil) {
        isLoading = true
        networkService.fetchIPInfo { [weak self] result in
            self?.isLoading = false
            switch result {
            case .success(let ipInfo):
                self?.handleSuccess(ipInfo: ipInfo)
            case .failure(let error):
                self?.handleError(error: error)
            }
            completion?()
        }
    }

    private func handleSuccess(ipInfo: IPInfo) {
        if ipInfo.version == "IPv3" {
            errorMessage = "Deprecated IP version"
        } else {
            self.ipInfo = ipInfo
        }
    }
    
    private func handleError(error: Error) {
        if let customError = error as? NetworkError {
            errorMessage = customError.errorDescription
        } else {
            errorMessage = error.localizedDescription
        }
    }
}
