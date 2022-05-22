//
//  FeatureSearchViewController.swift
//  FeatureSearch
//
//  Created by 김호세 on 2022/05/01.
//  Copyright © 2022 com.psychehose. All rights reserved.
//

import RIBs
import RxSwift
import SnapKit
import UIKit

protocol FeatureSearchPresentableListener: AnyObject {
}

final public class FeatureSearchViewController: UIViewController, FeatureSearchPresentable, FeatureSearchViewControllable {
  private let tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .plain)
    tableView.backgroundColor = .white
    return tableView
  }()

  public override func viewDidLoad() {
    super.viewDidLoad()
    print("Okay 저축은행")
    makeUI()
  }
  weak var listener: FeatureSearchPresentableListener?
}

extension FeatureSearchViewController {
  private func makeUI() {
    view.addSubview(tableView)

    tableView.snp.makeConstraints { make in
      make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
      make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
      make.bottom.equalToSuperview()
      make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
    }
  }
}
