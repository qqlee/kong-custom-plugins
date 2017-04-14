package = "kong-plugin-hmac-with-body-validation"
version = "0.10.1-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/qqlee/kong-custom-plugins",
  tag = "0.10.1"
}
description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "MIT"
}
dependencies = {
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.hmac-with-body-validation.migrations.postgres"] = "kong/plugins/hmac-with-body-validation/migrations/postgres.lua",
    ["kong.plugins.hmac-with-body-validation.handler"] = "kong/plugins/hmac-with-body-validation/handler.lua",
    ["kong.plugins.hmac-with-body-validation.access"] = "kong/plugins/hmac-with-body-validation/access.lua",
    ["kong.plugins.hmac-with-body-validation.schema"] = "kong/plugins/hmac-with-body-validation/schema.lua",
    ["kong.plugins.hmac-with-body-validation.hooks"] = "kong/plugins/hmac-with-body-validation/hooks.lua",
    ["kong.plugins.hmac-with-body-validation.api"] = "kong/plugins/hmac-with-body-validation/api.lua",
    ["kong.plugins.hmac-with-body-validation.daos"] = "kong/plugins/hmac-with-body-validation/daos.lua",
  }
}

