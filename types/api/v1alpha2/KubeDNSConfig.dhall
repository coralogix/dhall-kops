  { cacheMaxSize :
      Optional Natural
  , cacheMaxConcurrent :
      Optional Natural
  , domain :
      Optional Text
  , image :
      Optional Text
  , replicas :
      Optional Natural
  , provider :
      Optional Text
  , serverIP :
      Optional Text
  , stubDomains :
      Optional (List { mapKey : Text, mapValue : Text })
  , upstreamNameservers :
      Optional (List Text)
  }
: Type
