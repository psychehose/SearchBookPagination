//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/27.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "CoreKit",
    organizationName: "com.hose",
    packages: [
        .local(path: .relativeToRoot("Projects/RxPackage"))
    ],
    targets: Project.dynamicFramework(
        name: "CoreKit",
        frameworkDependencies: [
            .external(name: "Alamofire")
        ],
        testDependencies: []
    ),
    schemes: []
)
