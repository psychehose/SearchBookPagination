//
//  FeatureRootBuilder.swift
//  FeatureRoot
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs

import FeatureSearch

public protocol FeatureRootDependency: Dependency {
  // TODO: Declare the set of dependencies required by this RIB, but cannot be
  // created by this RIB.
}

public final class FeatureRootComponent: Component<FeatureRootDependency> {
  
  // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
  
  
  let rootViewController: FeatureRootViewController
  
  init(
    dependency: FeatureRootDependency,
    rootViewController: FeatureRootViewController) {
      self.rootViewController = rootViewController
      super.init(dependency: dependency)
    }
}

// MARK: - Builder

public protocol FeatureRootBuildable: Buildable {
  func build() -> LaunchRouting
}

final public class FeatureRootBuilder: Builder<FeatureRootDependency>, FeatureRootBuildable {
  
  override public init(dependency: FeatureRootDependency) {
    super.init(dependency: dependency)
  }
  
  public func build() -> LaunchRouting {
    let viewController = FeatureRootViewController()
    let component = FeatureRootComponent(
      dependency: dependency,
      rootViewController: viewController
    )
    let interactor = FeatureRootInteractor(presenter: viewController)
    
    let searchBuilder = FeatureSearch.FeatureSearchBuilder(dependency: component)
    
    return FeatureRootRouter(
      interactor: interactor,
      viewController: viewController,
      featureSearchBuildable: searchBuilder
    )
  }
}
