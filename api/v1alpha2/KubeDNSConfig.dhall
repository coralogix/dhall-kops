{ Type =
    { cacheMaxSize : Optional Natural
    , cacheMaxConcurrent : Optional Natural
    , domain : Optional Text
    , image : Optional Text
    , replicas : Optional Natural
    , provider : Optional Text
    , serverIP : Optional Text
    , stubDomains : Optional (List { mapKey : Text, mapValue : Text })
    , upstreamNameservers : Optional (List Text)
    }
, default =
  { cacheMaxSize = None Natural
  , cacheMaxConcurrent = None Natural
  , domain = None Text
  , image = None Text
  , replicas = None Natural
  , provider = None Text
  , serverIP = None Text
  , stubDomains = None (List { mapKey : Text, mapValue : Text })
  , upstreamNameservers = None (List Text)
  }
}
