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
    organizationName: "com.hose",
    packages: [],
    targets: Project.dynamicFramework(
        name: "Features",
        frameworkDependencies: [
            .project(target: "FeatureLogin", path: .relativeToFeature("FeatureLogin")),
            .project(target: "FeatureMain", path: .relativeToFeature("FeatureMain")),
        ],
        testDependencies: []
    ),
    schemes: []
)
