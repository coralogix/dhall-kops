{ Type =
    { address : Optional Text
    , configOverride : Optional Text
    , logLevel : Optional Text
    , root : Optional Text
    , skipInstall : Optional Bool
    , state : Optional Text
    , version : Optional Text
    }
, default =
  { address = None Text
  , configOverride = None Text
  , logLevel = None Text
  , root = None Text
  , skipInstall = None Bool
  , state = None Text
  , version = None Text
  }
}
