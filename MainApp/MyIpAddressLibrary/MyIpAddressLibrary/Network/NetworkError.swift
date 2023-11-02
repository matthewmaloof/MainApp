//
//  NetworkError.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import Foundation

enum NetworkError: LocalizedError {
    case networkError
    case networkTimeout
    case serverError

    var errorDescription: String? {
        switch self {
        case .networkError: return "Network error"
        case .networkTimeout: return "Network Timeout"
        case .serverError: return "Server error"
        }
    }
}
