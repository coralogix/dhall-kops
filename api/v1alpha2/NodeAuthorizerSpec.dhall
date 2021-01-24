let NodeAuthorizerSpec =
      { Type =
          { authorizer : Optional Text
          , features : Optional (List Text)
          , image : Optional Text
          , nodeURL : Optional Text
          , port : Optional Natural
          , interval : Optional Text
          , timeout : Optional Natural
          , tokenTTL : Optional Natural
          }
      , default =
        { authorizer = None Text
        , features = None (List Text)
        , image = None Text
        , nodeURL = None Text
        , port = None Natural
        , interval = None Text
        , timeout = None Natural
        , tokenTTL = None Natural
        }
      }

let spellchecdk = NodeAuthorizerSpec::{=}

in  NodeAuthorizerSpec
