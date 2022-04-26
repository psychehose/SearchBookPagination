//
//  Dependencies.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription


let dependencies = Dependencies(
    carthage: [
        .github(path: "ReactiveX/RxSwift", requirement: .exact("6.5.0")),
        .github(path: "layoutBox/FlexLayout", requirement: .branch("master")),
        .github(path: "layoutBox/PinLayout", requirement: .branch("master")),
        .github(path: "SnapKit/SnapKit", requirement: .exact("5.0.0")),
        .github(path: "uber/RIBs", requirement: .exact("0.9"))
    ],
    swiftPackageManager: [],
    platforms: [.iOS]
)

