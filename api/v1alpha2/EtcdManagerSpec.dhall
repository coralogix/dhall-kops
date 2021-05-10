let EtcdManagerSpec =
      { Type =
          { image : Optional Text
          , env : Optional (List { name : Text, value : Text })
          , discoveryPollInterval : Optional Text
          , logLevel : Optional Natural
          }
      , default =
        { image = None Text
        , env = None (List { name : Text, value : Text })
        , discoveryPollInterval = None Text
        , logLevel = None Natural
        }
      }

let spellcheck = EtcdManagerSpec::{=}

in  EtcdManagerSpec
