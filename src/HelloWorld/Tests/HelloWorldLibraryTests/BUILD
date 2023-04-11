load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_test",
)

swift_test(
    name = "HelloWorldUnitTests",
    srcs = [
        "HelloWorldCommandTests.swift",
    ],
    visibility = [
        "@rules_xcodeproj//xcodeproj:generated",
    ],
    deps = [
        "//src/HelloWorld/Sources/HelloWorldLibrary",
    ],
)
