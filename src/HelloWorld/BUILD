load("@rules_xcodeproj//xcodeproj:defs.bzl", "xcodeproj")

xcodeproj(
    name = "xcodeproj",
    bazel_path = "$HOME/tinder_toolchain/bazelisk",
    project_name = "HelloWorld",
    tags = ["manual"],
    top_level_targets = [
        "//src/HelloWorld/Sources/HelloWorldTool:hello-world",
        "//src/HelloWorld/Tests/HelloWorldLibraryTests:HelloWorldUnitTests",
    ],
)
