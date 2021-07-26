let ServiceAccountIssuerDiscoveryConfig =
      { Type =
          { discoveryStore : Optional Text
          , enableAWSOIDCProvider : Optional Bool
          }
      , default =
        { discoveryStore = None Text, enableAWSOIDCProvider = None Bool }
      }

let spellcheck = ServiceAccountIssuerDiscoveryConfig::{=}

in  ServiceAccountIssuerDiscoveryConfig
