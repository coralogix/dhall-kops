let KubeDNSConfig = ../../../types/api/v1alpha2/KubeDNSConfig.dhall : Type

in    { cacheMaxSize =
          None Natural
      , cacheMaxConcurrent =
          None Natural
      , domain =
          None Text
      , image =
          None Text
      , replicas =
          None Natural
      , provider =
          None Text
      , serverIP =
          None Text
      , stubDomains =
          None (List { mapKey : Text, mapValue : Text })
      , upstreamNameservers =
          None (List Text)
      }
    : KubeDNSConfig
