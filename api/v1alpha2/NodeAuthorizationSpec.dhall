let NodeAuthorizerSpec = ./NodeAuthorizerSpec.dhall

in  { Type = { nodeAuthorizer : NodeAuthorizerSpec.Type }, default = {=} }
