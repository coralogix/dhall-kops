let NodeLocalDNSConfig = ./NodeLocalDNSConfig.dhall

in  { Type =
        { cacheMaxSize : Optional Natural
        , cacheMaxConcurrent : Optional Natural
        , coreDNSImage : Optional Text
        , cpaImage : Optional Text
        , domain : Optional Text
        , externalCoreFile : Optional Text
        , image : Optional Text
        , replicas : Optional Natural
        , provider : Optional Text
        , serverIP : Optional Text
        , stubDomains : Optional (List { mapKey : Text, mapValue : Text })
        , upstreamNameservers : Optional (List Text)
        , memoryRequest : Optional Text
        , cpuRequest : Optional Text
        , memoryLimit : Optional Text
        , nodeLocalDNS : Optional NodeLocalDNSConfig.Type
        }
    , default =
      { cacheMaxSize = None Natural
      , cacheMaxConcurrent = None Natural
      , coreDNSImage = None Text
      , cpaImage = None Text
      , domain = None Text
      , externalCoreFile = None Text
      , image = None Text
      , replicas = None Natural
      , provider = None Text
      , serverIP = None Text
      , stubDomains = None (List { mapKey : Text, mapValue : Text })
      , upstreamNameservers = None (List Text)
      , memoryRequest = None Text
      , cpuRequest = None Text
      , memoryLimit = None Text
      , nodeLocalDNS = None NodeLocalDNSConfig.Type
      }
    }
