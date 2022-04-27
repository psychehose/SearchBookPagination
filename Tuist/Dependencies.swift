//
//  Dependencies.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription


let dependencies = Dependencies(
    carthage: [
        .github(path: "layoutBox/FlexLayout", requirement: .branch("master")),
        .github(path: "layoutBox/PinLayout", requirement: .branch("master")),
        .github(path: "SnapKit/SnapKit", requirement: .exact("5.0.0")),
        .github(path: "Alamofire/Alamofire", requirement: .branch("master"))
    ],
    swiftPackageManager: [],
    platforms: [.iOS]
)

