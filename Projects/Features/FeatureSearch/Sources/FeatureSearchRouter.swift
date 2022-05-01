//
//  FeatureSearchRouter.swift
//  FeatureSearch
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs

protocol FeatureSearchInteractable: Interactable {
  var router: FeatureSearchRouting? { get set }
  var listener: FeatureSearchListener? { get set }
}

protocol FeatureSearchViewControllable: ViewControllable {
  // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class FeatureSearchRouter: ViewableRouter<FeatureSearchInteractable, FeatureSearchViewControllable>, FeatureSearchRouting {
  
  // TODO: Constructor inject child builder protocols to allow building children.
  override init(interactor: FeatureSearchInteractable, viewController: FeatureSearchViewControllable) {
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}
