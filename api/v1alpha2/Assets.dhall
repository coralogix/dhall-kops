{ Type =
    { containerRegistry : Optional Text
    , fileRepository : Optional Text
    , containerProxy : Optional Text
    }
, default =
  { containerRegistry = None Text
  , fileRepository = None Text
  , containerProxy = None Text
  }
}
