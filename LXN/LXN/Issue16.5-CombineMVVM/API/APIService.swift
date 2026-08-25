//
//  APIService.swift
//  LXN
//
//  Created by Macbook on 21/8/26.
//

import Foundation

final class APIService {
    
    static let shared = APIService()
    
    private init() {}
    
    func request<T: Decodable>(
           target: APITarget,
           authToken: String? = nil,
           completion: @escaping (Result<T, APIError>) -> Void
    ) {
        do {
            let request = try target.asURLRequest( authToken: authToken)
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    DispatchQueue.main.async {
                        completion(
                            .failure(
                                .urlError(error)
                            ))
                    }
                }
                
                guard let response = response as? HTTPURLResponse else {
                    DispatchQueue.main.async {
                        completion(
                            .failure(.invalidResponse)
                        )
                    }
                    return
                }
                
                guard (200...299).contains(response.statusCode) else {
                    DispatchQueue.main.async {
                        completion(
                            .failure(
                                .httpError(response.statusCode)
                            )
                        )
                    }
                    return
                }
                
                guard let data = data else {
                    DispatchQueue.main.async {
                        completion(
                            .failure(.invalidResponse)
                        )
                    }
                    return
                }
                do {
                                  
                                  let result = try JSONDecoder().decode(
                                      T.self,
                                      from: data
                                  )
                                  
                                  DispatchQueue.main.async {
                                      completion(
                                          .success(result)
                                      )
                                  }
                                  
                              } catch {
                                  
                                  DispatchQueue.main.async {
                                      completion(
                                          .failure(
                                              .decodingError(error)
                                          )
                                      )
                                  }
                              }
                              
                          }.resume()
                          
                      } catch let error as APIError {
                          
                          completion(.failure(error))
                          
                      } catch {
                          
                          completion(
                              .failure(
                                .decodingError(error)
                              )
                          )
            }
            
        }
        
}

