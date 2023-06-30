load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def anchore_deps():
    http_archive(
        name = "grype_linux_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "835b22f547bae314f5334c2ac07ca6fa42e1ed329c3f4e07e724667cba38faf7",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.0/grype_0.63.0_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_linux_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "1f9e66b1d0fad389e2c27388f3859a3ceba14eb49de69255afcebe74bd03bb4e",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.0/grype_0.63.0_linux_arm64.tar.gz",
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
        sha256 = "291b4f56804de7e7bfe12dfac153bc8c7a5d1880d83e0e62382fea15c66c3fd4",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.0/grype_0.63.0_darwin_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_windows",
        build_file_content = 'exports_files(["grype.exe"], visibility = ["//visibility:public"])',
        sha256 = "110f9d2a07a46d855bd53dc6228de88cce0724df5f586e4b6fee11f9471284b8",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.63.0/grype_0.63.0_windows_amd64.zip",
        ],
    )

    http_archive(
        name = "syft_linux_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "cca9c05614667fe6d5de6362417754c522aeccadcb2ccfb9302f3dd7e82bdddc",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.0/syft_0.84.0_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_linux_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "33924f053526b6c2178f7c362bb7d19483406d59664cdf3528d92262cbfa213d",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.0/syft_0.84.0_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "f981df10be75e86fc82ba59cc338f982c5b6b07a5a2e3c104c983fca975fe1ac",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.0/syft_0.84.0_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "65972738458a3255011808f46919a2fd6c1a559565be67da2a2a8f314f25638e",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.0/syft_0.84.0_darwin_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_windows",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "39f90587629f32681ba22a03de6c996d4c4c94f3266e09ae6a472fd127176e07",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.84.0/syft_0.84.0_windows_amd64.zip",
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
