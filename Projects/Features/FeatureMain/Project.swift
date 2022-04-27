//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureMain",
    organizationName: "com.hose",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureMain",
        frameworkDependencies: [
            .project(target: "FeatureBase", path: .relativeToFeature("FeatureBase"))
        ],
        testDependencies: []
    ),
    
    schemes: []
)
