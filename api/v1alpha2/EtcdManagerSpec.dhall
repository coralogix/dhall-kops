{ Type =
    { image : Optional Text
    , env : Optional (List { name : Text, value : Text })
    , logLevel : Optional Natural
    }
, default =
  { image = None Text
  , env = None (List { name : Text, value : Text })
  , logLevel = None Natural
  }
}
