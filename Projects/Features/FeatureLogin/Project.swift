//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureLogin",
    organizationName: "com.hose",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureLogin",
        frameworkDependencies: [
            .project(target: "FeatureBase", path: "../FeatureBase")
        ],
        testDependencies: []
    ),
    schemes: []
)
