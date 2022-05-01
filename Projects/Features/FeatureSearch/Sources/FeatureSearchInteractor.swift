//
//  FeatureSearchInteractor.swift
//  FeatureSearch
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs
import RxSwift

public protocol FeatureSearchRouting: ViewableRouting {
  // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol FeatureSearchPresentable: Presentable {
  var listener: FeatureSearchPresentableListener? { get set }
  // TODO: Declare methods the interactor can invoke the presenter to present data.
}

public protocol FeatureSearchListener: AnyObject {
  // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class FeatureSearchInteractor: PresentableInteractor<FeatureSearchPresentable>, FeatureSearchInteractable, FeatureSearchPresentableListener {
  
  weak var router: FeatureSearchRouting?
  weak var listener: FeatureSearchListener?
  
  // TODO: Add additional dependencies to constructor. Do not perform any logic
  // in constructor.
  override init(presenter: FeatureSearchPresentable) {
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
