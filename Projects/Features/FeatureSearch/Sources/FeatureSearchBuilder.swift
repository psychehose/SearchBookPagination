//
//  FeatureSearchBuilder.swift
//  FeatureSearch
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs

public protocol FeatureSearchDependency: Dependency {
  // TODO: Declare the set of dependencies required by this RIB, but cannot be
  // created by this RIB.
}

final public class FeatureSearchComponent: Component<FeatureSearchDependency> {
  
  // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

public protocol FeatureSearchBuildable: Buildable {
  func build(withListener listener: FeatureSearchListener) -> FeatureSearchRouting
}

final public class FeatureSearchBuilder: Builder<FeatureSearchDependency>, FeatureSearchBuildable {
  
  override public init(dependency: FeatureSearchDependency) {
    super.init(dependency: dependency)
  }
  
  public func build(withListener listener: FeatureSearchListener) -> FeatureSearchRouting {
    let component = FeatureSearchComponent(dependency: dependency)
    let viewController = FeatureSearchViewController()
    let interactor = FeatureSearchInteractor(presenter: viewController)
    interactor.listener = listener
    return FeatureSearchRouter(interactor: interactor, viewController: viewController)
  }
}
