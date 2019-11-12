{ Type =
    { authorizer : Optional Text
    , features : Optional (List Text)
    , image : Optional Text
    , nodeURL : Optional Text
    , port : Optional Natural
    , timeout : Optional Natural
    , tokenTTL : Optional Natural
    }
, default =
    { authorizer = None Text
    , features = None (List Text)
    , image = None Text
    , nodeURL = None Text
    , port = None Natural
    , timeout = None Natural
    , tokenTTL = None Natural
    }
}
