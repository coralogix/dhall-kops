let ExternalDNSConfig =
      ../../../types/api/v1alpha2/ExternalDNSConfig.dhall : Type

in    { disable =
          None Bool
      , watchIngress =
          None Bool
      , watchNamespace =
          None Text
      }
    : ExternalDNSConfig
