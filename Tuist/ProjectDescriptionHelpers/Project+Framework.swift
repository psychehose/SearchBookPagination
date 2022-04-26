//
//  Project+Framework.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/04/26.
//

import ProjectDescription

extension Project {
    
    public static func staticFrameworkTargets(
        name: String,
        frameworkDependencies: [TargetDependency],
        testDependencies: [TargetDependency]
    ) -> [Target] {

        let frameworks = Target(
            name: name,
            platform: .iOS,
            product: .staticFramework,
            bundleId: "com.hose.\(name)",
            infoPlist: .default,
            sources: ["Sources/**/*.swift"],
            resources: [],
            dependencies: frameworkDependencies
        )
        let testTarget = Target(
            name: "\(name)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.hose.\(name)Tests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: name)] + testDependencies
        )
        return [frameworks, testTarget]
    }

    public static func staticLibrary(
        name: String,
        frameworkDependencies: [TargetDependency],
        testDependencies: [TargetDependency]
    ) -> [Target] {

        let library = Target(
            name: name,
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "com.hose.\(name)",
            infoPlist: .default,
            sources: ["Sources/**/*.swift"],
            resources: [],
            dependencies: frameworkDependencies
        )
        let testTarget = Target(
            name: "\(name)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.hose.\(name)Tests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: name)] + testDependencies
        )
        return [library, testTarget]
    }
    public static func dynamicFramework(
        name: String,
        frameworkDependencies: [TargetDependency],
        testDependencies: [TargetDependency]
    ) -> [Target] {

        let framework = Target(
            name: name,
            platform: .iOS,
            product: .framework,
            bundleId: "com.hose.\(name)",
            infoPlist: .default,
            sources: ["Sources/**/*.swift"],
            resources: [],
            dependencies: frameworkDependencies
        )
        let testTarget = Target(
            name: "\(name)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.hose.\(name)Tests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: name)] + testDependencies
        )
        return [framework, testTarget]
    }
}



