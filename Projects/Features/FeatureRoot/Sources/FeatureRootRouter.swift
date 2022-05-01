//
//  FeatureRootRouter.swift
//  FeatureRoot
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs
import FeatureSearch

protocol FeatureRootInteractable: Interactable, FeatureSearchListener {
  var router: FeatureRootRouting? { get set }
  var listener: FeatureRootListener? { get set }
}

protocol FeatureRootViewControllable: ViewControllable {
  // TODO: Declare methods the router invokes to manipulate the view hierarchy.
  func present(viewController: ViewControllable)
}

final class FeatureRootRouter: LaunchRouter<FeatureRootInteractable, FeatureRootViewControllable>, FeatureRootRouting {
  
  // TODO: Constructor inject child builder protocols to allow building children.
  init(
    interactor: FeatureRootInteractable,
    viewController: FeatureRootViewControllable,
    featureSearchBuildable: FeatureSearchBuildable
  ) {
    self.featureSearchBuildable = featureSearchBuildable
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
  
  override func didLoad() {
    super.didLoad()

    routeToSearch()
  }
  
  // MARK: Private
  private let featureSearchBuildable: FeatureSearchBuildable
  private var search: ViewableRouting?

  private func routeToSearch() {
    let search = featureSearchBuildable.build(withListener: interactor)
    self.search = search
    attachChild(search)
    viewController.present(viewController: search.viewControllable)
  }
}
