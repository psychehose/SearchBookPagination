//
//  SearchBookAPI.swift
//  CoreKit
//
//  Created by 김호세 on 2022/05/07.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import Foundation

protocol SearchBookAPIProtocol {
  func getBook(
    searchRequestDTO: SearchRequestDTO,
    completion: @escaping ((SearchResponseDTO?, Error?))-> Void)
}

final class SearchBookAPI: BaseAPI<SearchBookService>, SearchBookAPIProtocol {
  func getBook(
    searchRequestDTO: SearchRequestDTO,
    completion: @escaping ((SearchResponseDTO?, Error?)) -> Void) {
      fetchData(
        target: .getBook(searchRequestDTO),
        responseData: SearchResponseDTO.self) { res, err in
          completion((res, err))
        }
    }
  
}
