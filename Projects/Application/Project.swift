//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "SearchBookPagination",
    organizationName: "com.psychehose",
    packages: [],
    targets: Project.appTargets(
        name: "SearchBookPagination",
        appDependencies: [
            .project(
                target: "Features",
                path: .relativeToFeature("")
            )
        ],
        testDependencies: []
    ),
    schemes: [],
    additionalFiles: []
)
