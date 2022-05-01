//
//  FeatureRootInteractor.swift
//  FeatureRoot
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs
import RxSwift

public protocol FeatureRootRouting: ViewableRouting {
  // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol FeatureRootPresentable: Presentable {
  var listener: FeatureRootPresentableListener? { get set }
  // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol FeatureRootListener: AnyObject {
  // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class FeatureRootInteractor: PresentableInteractor<FeatureRootPresentable>, FeatureRootInteractable, FeatureRootPresentableListener {
  
  weak var router: FeatureRootRouting?
  weak var listener: FeatureRootListener?
  
  // TODO: Add additional dependencies to constructor. Do not perform any logic
  // in constructor.
  override init(presenter: FeatureRootPresentable) {
    super.init(presenter: presenter)
    presenter.listener = self
  }
  
  override func didBecomeActive() {
    super.didBecomeActive()
    // TODO: Implement business logic here.
  }
  
  override func willResignActive() {
    super.willResignActive()
    // TODO: Pause any business logic.
  }
}
