//
//  Project+App.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription

extension Project {
    public static func appTargets(
        name: String,
        appDependencies: [TargetDependency],
        testDependencies: [TargetDependency]
    ) -> [Target] {
        let mainTarget = Target(
            name: name,
            platform: .iOS,
            product: .app,
            bundleId: "com.hose.\(name)",
            infoPlist: .default,
            sources: ["Sources/**/*.swift"],
            resources: ["Resources/**"],
            dependencies: appDependencies
        )
        let testTarget = Target(
            name: "\(name)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.hose.\(name)Tests",
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [.target(name: name)] + testDependencies
        )
        return [mainTarget, testTarget]
    }
}

