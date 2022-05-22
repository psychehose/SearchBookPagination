//
//  SearchResponseDTO.swift
//  CoreKit
//
//  Created by 김호세 on 2022/05/07.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import Foundation

struct BaseResponseDTO<T: Decodable>: Decodable {
  let Data: T?
}

struct SearchResponseDTO: Decodable {
  let kind: String
  let totalItems: Int
  let items: [BookItem]
}

struct BookItem: Decodable {
  let id: String
  let volumeInfo: VolumeInfo
}

struct VolumeInfo: Decodable {
  let title: String
  let subtitle: String?
  let authors: [String]?
  let pageCount: Int?
  let imageLinks: ImageLinks?
}
struct ImageLinks: Decodable {
  let smallThumbnail: String
  let thumbnail: String
}
