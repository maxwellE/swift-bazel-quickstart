load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "HelloWorldLibrary",
    srcs = [
        "HelloWorldCommand.swift",
    ],
    module_name = "HelloWorldLibrary",
    visibility = [
        "//src/HelloWorld/Sources/HelloWorldTool:__pkg__",
        "//src/HelloWorld/Tests/HelloWorldLibraryTests:__pkg__",
    ],
    deps = [
        "@com_github_apple_swift_argument_parser//:ArgumentParser",
    ],
)
