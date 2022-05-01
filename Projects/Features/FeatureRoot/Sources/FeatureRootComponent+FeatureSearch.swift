//
//  FeatureRootComponent+FeatureSearch.swift
//  FeatureRoot
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs
import FeatureSearch

/// The dependencies needed from the parent scope of FeatureRoot to provide for the FeatureSearch scope.
// TODO: Update FeatureRootDependency protocol to inherit this protocol.
protocol FeatureRootDependencyFeatureSearch: Dependency {
    // TODO: Declare dependencies needed from the parent scope of FeatureRoot to provide dependencies
    // for the FeatureSearch scope.
}

extension FeatureRootComponent: FeatureSearchDependency {

    // TODO: Implement properties to provide for FeatureSearch scope.
}
