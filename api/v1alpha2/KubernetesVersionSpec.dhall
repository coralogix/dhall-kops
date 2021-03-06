let KubernetesVersionSpec =
      { Type =
          { range : Optional Text
          , recommendedVersion : Optional Text
          , requiredVersion : Optional Text
          }
      , default =
        { range = None Text
        , recommendedVersion = None Text
        , requiredVersion = None Text
        }
      }

let spellcheck = KubernetesVersionSpec::{=}

in  KubernetesVersionSpec
