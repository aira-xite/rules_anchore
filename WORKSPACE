workspace(name = "com_github_hxtk_rules_anchore")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("//:deps.bzl", "anchore_deps")

anchore_deps()

load("//:extra_deps.bzl", "anchore_extra_deps")

anchore_extra_deps()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
)

container_pull(
    name = "distroless_base",
    digest = "sha256:1b2306a7c6e3a2693b730bd2697704650ba71bfa7ba55ee096e8734ae6473f66",
    registry = "gcr.io",
    repository = "distroless/base-debian11",
    tag = "nonroot",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

http_file(
    name = "outdated_cve_database",
    downloaded_file_path = "downloaded.tar.gz",
    sha256 = "1ba68ee63e057d09a8529b603a4b85a38851258fe9625c1594014a3f1f6549a7",
    urls = ["https://toolbox-data.anchore.io/grype/databases/vulnerability-db_v5_2023-02-25T08:13:48Z_053525c019d8fb8ae3e7.tar.gz"],
)

# com_github_hxtk_rules_anchore managed rule; DO NOT EDIT
http_file(
    name = "grype_database",
    downloaded_file_path = "downloaded.tar.gz",
    sha256 = "16feecf7d44af3826f40b848b41251ad274b0beb1e8cd3e27487cb809434d7c5",
    urls = ["https://toolbox-data.anchore.io/grype/databases/vulnerability-db_v5_2023-10-09T01:23:57Z_610c99a5459155d01aa0.tar.gz"],
)
