//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "DesignSystem",
    organizationName: "com.hose",
    packages: [],
    targets: Project.dynamicFramework(
        name: "DesignSystem",
        frameworkDependencies: [
            .external(name: "FlexLayout"),
            .external(name: "PinLayout"),
            .external(name: "SnapKit"),
        ],
        testDependencies: []
    ),
    schemes: []
)
