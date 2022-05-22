//
//  APIRequestLoader.swift
//  CoreKit
//
//  Created by 김호세 on 2022/05/07.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import Foundation

protocol APIRequest {
  associatedtype RequestDataType
  associatedtype ResponseDataType
  
  func makeRequest(from data: RequestDataType) throws -> URLRequest
  func parseResponse(data: Data) throws -> ResponseDataType
  
}

class APIRequestLoader<T: APIRequest> {
  let apiRequest: T
  let urlSession: URLSession
  
  init(apiRequest: T, urlSession: URLSession = .shared) {
    self.apiRequest = apiRequest
    self.urlSession = urlSession
  }
  
  func loadAPIRequest(
    requestData: T.RequestDataType,
    completionHandler: @escaping (T.ResponseDataType?, Error?) -> Void) {
      do {
        let urlRequest = try apiRequest.makeRequest(from: requestData)
        urlSession.dataTask(with: urlRequest) { data, response, error in
          guard let data = data else { return completionHandler(nil, error) }
          do {
            let parsedResponse = try self.apiRequest.parseResponse(data: data)
            completionHandler(parsedResponse,nil)
          } catch {
            completionHandler(nil, error)
          }
        }.resume()
      } catch {
        completionHandler(nil, error)
      }
    }
}

struct UserTestData: Codable, Equatable {
  let userName: String
}
