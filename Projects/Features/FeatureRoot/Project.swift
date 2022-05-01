//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김호세 on 2022/05/01.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureRoot",
    organizationName: "com.psychehose",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureRoot",
        frameworkDependencies: [
            .project(target: "FeatureSearch", path: .relativeToFeature("FeatureSearch"))
        ],
        testDependencies: []
    ),
    schemes: []
)
