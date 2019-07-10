let NodeAuthorizerSpec =
      ../../../types/api/v1alpha2/NodeAuthorizerSpec.dhall : Type

in    { authorizer =
          None Text
      , features =
          None (List Text)
      , image =
          None Text
      , nodeURL =
          None Text
      , port =
          None Natural
      , timeout =
          None Natural
      , tokenTTL =
          None Natural
      }
    : NodeAuthorizerSpec
