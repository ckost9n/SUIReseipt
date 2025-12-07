import ProjectDescription

let project = Project(
    name: "SUIReseipt",
    targets: [
        .target(
            name: "SUIReseipt",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.SUIReseipt",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["SUIReseipt/Sources/**"],
            resources: ["SUIReseipt/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SUIReseiptTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.SUIReseiptTests",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .default,
            sources: ["SUIReseipt/Tests/**"],
            resources: [],
            dependencies: [.target(name: "SUIReseipt")]
        ),
    ]
)
