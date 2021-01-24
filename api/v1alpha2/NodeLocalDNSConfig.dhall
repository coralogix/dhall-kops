let NodeLocalDNSConfig =
      { Type =
          { enabled : Optional Bool
          , localIP : Optional Text
          , forwardToKubeDNS : Optional Bool
          , memoryRequest : Optional Text
          , cpuRequest : Optional Text
          }
      , default =
        { enabled = None Bool
        , localIP = None Text
        , forwardToKubeDNS = None Bool
        , memoryRequest = None Text
        , cpuRequest = None Text
        }
      }

let spellcheck = NodeLocalDNSConfig::{=}

in  NodeLocalDNSConfig
