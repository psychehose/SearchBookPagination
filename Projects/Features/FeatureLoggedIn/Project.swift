//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureLoggedIn",
    organizationName: "com.psychehose",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureLoggedIn",
        frameworkDependencies: [
            .project(target: "FeatureBase", path: .relativeToFeature("FeatureBase"))
        ],
        testDependencies: []
    ),
    schemes: []
)
