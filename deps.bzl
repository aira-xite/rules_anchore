load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def anchore_deps():
    http_archive(
        name = "grype_linux_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "12631d41738f01c427c2b2d0b31691206ddb3111f5e8c40aadafd2d1997a0a77",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.1/grype_0.63.1_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_linux_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "1166a2e5971691e90da41ecd0992030bbf429b728569919c6aeaac80dccb3fea",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.1/grype_0.63.1_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_darwin_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "831b9bf2ed62a9d57ed20c044b78ce8343aa0bc4899da4c07d78844c773aa411",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.1/grype_0.63.1_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_darwin_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "8ee1e83286bf9a72f2801bd97daa9f70abe576150e8860f58e6205e2f72290ba",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.1/grype_0.63.1_darwin_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_windows",
        build_file_content = 'exports_files(["grype.exe"], visibility = ["//visibility:public"])',
        sha256 = "57c2a62fc062eb63407f0cb2331b9a6ef5da76cf6a7b42f50b0f11b5f73ee4d3",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.1/grype_0.63.1_windows_amd64.zip",
        ],
    )

    http_archive(
        name = "syft_linux_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "05ebad9167254f03447103efea175d636c3cd27d0da7f79972ca78adc7c442f9",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.1/syft_0.84.1_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_linux_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "8b68b2cf046f8c3729753f7a414eb6546ac7b43bee3afd56f413601200cac3c2",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.1/syft_0.84.1_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "43af6c70dca85ea603fb807e78044879c549a7b9d053d00d071078cebbdf2c6d",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.1/syft_0.84.1_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "b98b9817dc284a0eb5d7e559a574361fda49d79a3413710ae5c35bd5e986adcb",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.1/syft_0.84.1_darwin_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_windows",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "03241b9de869df23634c34c28cc27a7f48af3571ef95b46318c834a56c42e519",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.1/syft_0.84.1_windows_amd64.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "io_bazel_stardoc",
        sha256 = "dfbc364aaec143df5e6c52faf1f1166775a5b4408243f445f44b661cfdc3134f",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.5.6/stardoc-0.5.6.tar.gz",
            "https://github.com/bazelbuild/stardoc/releases/download/0.5.6/stardoc-0.5.6.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "66ffd9315665bfaafc96b52278f57c7e2dd09f5ede279ea6d39b2be471e7e3aa",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.4.2/bazel-skylib-1.4.2.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.2/bazel-skylib-1.4.2.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_docker",
        sha256 = "b1e80761a8a8243d03ebca8845e9cc1ba6c82ce7c5179ce2b295cd36f7e394bf",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.25.0/rules_docker-v0.25.0.tar.gz"],
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "6dc2da7ab4cf5d7bfc7c949776b1b7c733f05e56edc4bcd9022bb249d2e2a996",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.39.1/rules_go-v0.39.1.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.39.1/rules_go-v0.39.1.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "b8b6d75de6e4bf7c41b7737b183523085f56283f6db929b86c5e7e1f09cf59c9",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.31.1/bazel-gazelle-v0.31.1.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.31.1/bazel-gazelle-v0.31.1.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_protobuf",
        strip_prefix = "protobuf-23.3",
        sha256 = "f6ac7f4b735f9b7c50e45cff845e787eeb4acde9a8955542c9f1f7f95ada876f",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/refs/tags/v23.3.zip"],
    )
