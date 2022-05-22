//
//  SearchRequestDTO.swift
//  CoreKit
//
//  Created by 김호세 on 2022/05/07.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import Foundation

struct SearchRequestDTO: Encodable {
  let q: String
  let startIndex: Int
}
