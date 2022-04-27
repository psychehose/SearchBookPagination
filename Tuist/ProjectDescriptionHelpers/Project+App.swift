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

public extension ProjectDescription.Path {
    static func relativeToModule(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Modules/\(pathString)")
    }
    static func relativeToFeature(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Features/\(pathString)")
    }
    static func relativeToUserInterface(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/UserInterface/\(pathString)")
    }
    static func relativeToDomain(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Domain/\(pathString)")
    }
    static func relativeToDataRepository(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/DataRepository/\(pathString)")
    }
    static func relativeToNetwork(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Network/\(pathString)")
    }
    static func relativeToDesignSystem(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/DesignSystem/\(pathString)")
    }
    static func relativeToCoreKit(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/CoreKit/\(pathString)")
    }
    static var app: Self {
        return .relativeToRoot("Projects/App")
    }
}
