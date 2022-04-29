//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Features",
    organizationName: "com.psychehose",
    packages: [],
    targets: Project.dynamicFramework(
        name: "Features",
        frameworkDependencies: [
            .project(target: "FeatureLoggedIn", path: .relativeToFeature("FeatureLoggedIn")),
            .project(target: "FeatureLoggedOut", path: .relativeToFeature("FeatureLoggedOut"))
        ],
        testDependencies: []
    ),
    schemes: []
)
