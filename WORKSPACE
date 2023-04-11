load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_xcodeproj",
    sha256 = "7967b372bd1777214ce65c87a82ac0630150b7504b443de0315ea52e45758e0c",
    url = "https://github.com/MobileNativeFoundation/rules_xcodeproj/releases/download/1.3.3/release.tar.gz",
)

load(
    "@rules_xcodeproj//xcodeproj:repositories.bzl",
    "xcodeproj_rules_dependencies",
)

xcodeproj_rules_dependencies()

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

SWIFT_ARGUMENT_PARSER_VERSION = "1.2.2"

http_archive(
    name = "com_github_apple_swift_argument_parser",
    build_file_content = """
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "ArgumentParserToolInfo",
    module_name = "ArgumentParserToolInfo",
    srcs = glob([
        "Sources/ArgumentParserToolInfo/**/*.swift"
    ], allow_empty = False),
    visibility = ["//visibility:private"],
)

swift_library(
    name = "ArgumentParser",
    module_name = "ArgumentParser",
    srcs = glob([
        "Sources/ArgumentParser/**/*.swift"
    ], allow_empty = False),
    visibility = ["//visibility:public"],
    deps = [
        ":ArgumentParserToolInfo"
    ]
)
    """,
    sha256 = "44782ba7180f924f72661b8f457c268929ccd20441eac17301f18eff3b91ce0c",
    strip_prefix = "swift-argument-parser-%s" % SWIFT_ARGUMENT_PARSER_VERSION,
    urls = ["https://github.com/apple/swift-argument-parser/archive/refs/tags/%s.tar.gz" % SWIFT_ARGUMENT_PARSER_VERSION],
)
