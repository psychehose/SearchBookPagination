//
//  TestView.swift
//  DesignSystem
//
//  Created by KIM HOSE on 2022/04/26.
//  Copyright © 2022 com.hose. All rights reserved.
//

import Foundation

import UIKit
import SnapKit
import ResourcePackage

final class TestView: UIView {
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = R.Color.Color1
        return button
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension TestView {
    private func makeUI() {
        addSubview(button)

        button.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
}
