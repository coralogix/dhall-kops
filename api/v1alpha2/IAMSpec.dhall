{ Type =
    { legacy : Optional Bool
    , allowContainerRegistry : Optional Bool
    , permissionsBoundary : Optional Text
    }
, default =
  { legacy = None Bool
  , allowContainerRegistry = None Bool
  , permissionsBoundary = None Text
  }
}
