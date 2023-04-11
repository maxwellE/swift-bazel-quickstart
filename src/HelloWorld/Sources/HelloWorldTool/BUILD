load("@build_bazel_rules_swift//swift:swift.bzl", "swift_binary")

swift_binary(
    name = "hello-world",
    srcs = [
        "main.swift",
    ],
    visibility = [
        "@rules_xcodeproj//xcodeproj:generated",
    ],
    deps = [
        "//src/HelloWorld/Sources/HelloWorldLibrary",
    ],
)
