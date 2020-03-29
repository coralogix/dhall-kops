{ Type =
    { labels : Optional (List { mapKey : Text, mapValue : Text })
    , providerID : Optional Text
    , name : Optional Text
    , kubernetesVersion : Optional Text
    }
, default =
  { labels = None (List { mapKey : Text, mapValue : Text })
  , providerID = None Text
  , name = None Text
  , kubernetesVersion = None Text
  }
}
