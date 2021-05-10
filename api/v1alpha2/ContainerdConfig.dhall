let PackagesConfig = ./PackagesConfig.dhall

let ContainerdConfig =
      { Type =
          { address : Optional Text
          , configOverride : Optional Text
          , logLevel : Optional Text
          , packages : Optional PackagesConfig.Type
          , registryMirrors : Optional (List { mapKey : Text, mapValue : Text })
          , root : Optional Text
          , skipInstall : Optional Bool
          , state : Optional Text
          , version : Optional Text
          }
      , default =
        { address = None Text
        , configOverride = None Text
        , logLevel = None Text
        , packages = None PackagesConfig.Type
        , registryMirrors = None (List { mapKey : Text, mapValue : Text })
        , root = None Text
        , skipInstall = None Bool
        , state = None Text
        , version = None Text
        }
      }

let spellcheck = ContainerdConfig::{=}

in  ContainerdConfig
