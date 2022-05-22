//
//  SearchBookService.swift
//  CoreKit
//
//  Created by 김호세 on 2022/05/07.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import Foundation

import Alamofire

enum SearchBookService {
  case getBook(SearchRequestDTO)
}

extension SearchBookService: TargetType {
  var baseURL: String {
    return "https://www.googleapis.com/books/v1"
  }

  var path: String {
    switch self {
    case .getBook:
      return "/volumes"
    }
  }

  var method: HTTPMethod {
    switch self {
    case .getBook:
      return .get
    }
  }

  var parameters: RequestParams {
    switch self {
    case .getBook(let searchRequestDTO):
      return .query(searchRequestDTO)
    }
  }
  
}
