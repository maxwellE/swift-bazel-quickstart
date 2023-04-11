# swift-bazel-quickstart

A simple tutorial for getting started with rules_swift and rules_xcodeproj

The exercises are divided into versions (v1, v2, etc.). Each version builds
upon the last and includes all the functionality of the previous
versions.

* **[v1](https://github.com/maxwellE/swift-bazel-quickstart/tree/v1)**: Sets up a simple command line program using [`swift_binary`](https://github.com/bazelbuild/rules_swift/blob/master/doc/rules.md#swift_binary) and [`swift_library`](https://github.com/bazelbuild/rules_swift/blob/master/doc/rules.md#swift_library).
* **[v2](https://github.com/maxwellE/swift-bazel-quickstart/tree/v2)**: Sets up tests on the targets created in v1 using [`swift_test`](https://github.com/bazelbuild/rules_swift/blob/master/doc/rules.md#swift_test).
* **[v3](https://github.com/maxwellE/swift-bazel-quickstart/tree/v3)**: Sets up a generated xcode project using rules_xcodeproj's [`xcodeproj`](https://github.com/MobileNativeFoundation/rules_xcodeproj/blob/main/docs/bazel.md#xcodeproj) rule.
