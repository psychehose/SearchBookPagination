//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureBase",
    organizationName: "com.hose",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureBase",
        frameworkDependencies: [
            .project(target: "DesignSystem", path: "../../DesignSystem")
        ],
        testDependencies: []
    ),
    schemes: []
)
