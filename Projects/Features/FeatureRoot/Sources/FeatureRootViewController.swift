//
//  FeatureRootViewController.swift
//  FeatureRoot
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol FeatureRootPresentableListener: AnyObject {
  // TODO: Declare properties and methods that the view controller can invoke to perform
  // business logic, such as signIn(). This protocol is implemented by the corresponding
  // interactor class.
}

final public class FeatureRootViewController: UIViewController, FeatureRootPresentable, FeatureRootViewControllable {
  
  
  weak var listener: FeatureRootPresentableListener?
  
  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Method is not supported")
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.red
  }
  public override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
  
  // MARK: - RootViewControllable
  
  func present(viewController: ViewControllable) {
    viewController.uiviewController.modalPresentationStyle = .fullScreen
    DispatchQueue.main.async { [weak self] in
      self?.present(viewController.uiviewController, animated: true, completion: nil)
    }
  }
}
