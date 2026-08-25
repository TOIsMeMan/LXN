//
//  APIError.swift
//  LXN
//
//  Created by Macbook on 21/8/26.
//

import Foundation

enum APIError: Error {
    
    case urlError(Error)
    case invalidResponse
    case httpError(Int)
    case noData
    case decodingError(Error)
    case unknown(Error)
}
extension APIError: LocalizedError {
    
    var errorDescription: String? {
        
        switch self {
        case .urlError(let error):
            return "URL không hợp lệ: \(error.localizedDescription)"
            
        case .invalidResponse:
            return "Response không hợp lệ"
            
        case .httpError(let statusCode):
            return "HTTP Error: \(statusCode)"
            
        case .noData:
            return "Không có dữ liệu"
            
        case .decodingError(let error):
            return "Không thể đọc JSON: \(error.localizedDescription)"
            
        case .unknown(let error):
            return error.localizedDescription
        }
    }
}
