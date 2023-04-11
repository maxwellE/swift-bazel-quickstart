load("@build_bazel_rules_swift//swift:swift.bzl", "swift_binary")

swift_binary(
    name = "hello-world",
    srcs = [
        "main.swift",
    ],
    deps = [
        "//src/HelloWorld/Sources/HelloWorldLibrary",
    ],
)
