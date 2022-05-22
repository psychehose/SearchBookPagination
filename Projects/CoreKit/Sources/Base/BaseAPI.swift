//
//  BaseAPI.swift
//  CoreKit
//
//  Created by 김호세 on 2022/05/07.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import Foundation
import Alamofire

class BaseAPI<T: TargetType> {
  
  let coniguration: URLSessionConfiguration
  let apiLogger = APIEventLogger()
  let session: Session
  
  init(
    configuration: URLSessionConfiguration = .default,
    isLogging: Bool = false
  ) {

    let apiLogger = isLogging ? [APIEventLogger()] : []
    self.coniguration = configuration
    self.session = Session(configuration: configuration, eventMonitors: apiLogger)
  }
  
  func fetchData<M: Decodable>(target: T, responseData: M.Type, completionHandler: @escaping (M?, Error?) -> Void) {
    session.request(target).responseDecodable { (response: DataResponse<M, AFError>) in
      
      guard let statusCode = response.response?.statusCode else {
        print("StatusCode not found")
        completionHandler(nil, response.error)
        return
      }
      if 200...300 ~= statusCode{
        
        guard let data = response.data,
              let decodedData = try? JSONDecoder().decode(M.self, from: data)
        else {
          print("Decoding Error")
          return
        }
        completionHandler(decodedData, nil)
      }
      else {
        print("error statusCode is \(statusCode)")
        completionHandler(nil, response.error)
        
      }
    }
  }
  
}
