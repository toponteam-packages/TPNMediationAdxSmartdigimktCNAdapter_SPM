// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationAdxSmartdigimktCNAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationAdxSmartdigimktCNAdapter",
            targets: ["TPNMediationAdxSmartdigimktCNAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://gitee.com/zhouhanhao/SmartdigimktCNSDK_SPM.git", exact: "6.5.90")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktCNAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkSmartdigimktCNAdapter/6.5.90.2.1/AnyThinkSmartdigimktCNAdapter-6.5.90.2.1.zip",
            checksum: "08402c875503d6ad9c3488d626fd26a99e2938d1e65d0a7d0fbaa5e83cb157a9"
        ),
        .target(
            name: "TPNMediationAdxSmartdigimktCNAdapterTarget",
            dependencies: [
                "AnyThinkSmartdigimktCNAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "SmartdigimktCNSDK", package: "SmartdigimktCNSDK_SPM")
            ],
            path: "Sources/TPNMediationAdxSmartdigimktCNAdapterTarget"
        )
    ]
)
