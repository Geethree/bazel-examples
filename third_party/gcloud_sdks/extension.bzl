load(":repositories.bzl", "gcloud_sdk_repositories")
def _gcloud_sdk_extensions(mctx):
    gcloud_sdk_repositories()

gcloud_sdks = module_extension(_gcloud_sdk_extensions)
