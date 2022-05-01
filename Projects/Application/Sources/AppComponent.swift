//
//  AppComponent.swift
//  SearchBookPagination
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs
import FeatureRoot

class AppComponent: Component<EmptyDependency>, FeatureRoot.FeatureRootDependency {
  
  init() {
    super.init(dependency: EmptyComponent())
  }
}

