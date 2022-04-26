//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "TestModularArchi",
    organizationName: "com.hose",
    packages: [],
    targets: Project.appTargets(
        name: "TestModularArchi",
        appDependencies: [
            .project(target: "Features", path: "../Features")
        ],
        testDependencies: []
    ),
    schemes: [],
    additionalFiles: []
)
