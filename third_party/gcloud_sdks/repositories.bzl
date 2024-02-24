load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

GCLOUD_VERSION = "465.0.0"
GCLOUD_PATCH_CMDS = [
    "ln -s google-cloud-sdk/bin/gcloud gcloud",
    "ln -s google-cloud-sdk/bin/gsutil gsutil",
    "ln -s google-cloud-sdk/bin/bq bq",
    "ln -s google-cloud-sdk/bin/git-credential-gcloud.sh git-credential-gcloud",
]

def gcloud_sdk_repositories():
    http_archive(
        name = "gcloud_darwin_arm64",
        build_file = "@bazel-examples//third_party/gcloud_sdks:gcloud_sdk.BUILD.bazel",
        patch_cmds = GCLOUD_PATCH_CMDS,
        sha256 = "37fb04743d5bfa3a21f3bee7359997e531fe5d21f141bc3d4a5b5d53f67c12eb",
        url = "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-{}-darwin-arm.tar.gz".format(GCLOUD_VERSION),
    )

    http_archive(
        name = "gcloud_darwin_amd64",
        build_file = "@bazel-examples//third_party/gcloud_sdks:gcloud_sdk.BUILD.bazel",
        patch_cmds = GCLOUD_PATCH_CMDS,
        sha256 = "1cd165af0e78d2dc8675a638996312748336b344ce8ba8794c5dac6293368e3b",
        url = "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-{}-darwin-x86_64.tar.gz".format(GCLOUD_VERSION),
    )

    http_archive(
        name = "gcloud_linux_amd64",
        build_file = "@bazel-examples//third_party/gcloud_sdks:gcloud_sdk.BUILD.bazel",
        patch_cmds = GCLOUD_PATCH_CMDS,
        sha256 = "7e098ef0e91c2201f77ca9cde80aeb55defd9bc1be926483abdd482f0c0ee756",
        url = "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-{}-linux-x86_64.tar.gz".format(GCLOUD_VERSION),
    )
