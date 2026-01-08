import ProjectDescription

let project = Project(
    name: "SUIReseipt",
    targets: [
        .target(
            name: "ReseiptSource",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ReseiptSource",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Targets/ReseiptSource/Sources/**"],
            resources: ["Targets/ReseiptSource/Resources/**"],
            dependencies: [.target(name: "DSKit")]
        ),
        .target(
            name: "DSKit",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.DSKit",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .default,
            sources: ["Targets/UIKit/**"],
            resources: [],
            dependencies: []
        ),
        .target(
            name: "ReseiptSourceTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ReseiptSourceTests",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .default,
            sources: ["Targets/ReseiptSource/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ReseiptSource")]
        ),
    ]
)
