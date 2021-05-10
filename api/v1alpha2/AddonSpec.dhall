let AddonSpec =
      { Type =
          { manifest : Optional Text
          , name : Optional Text
          , version : Optional Text
          , selector : Optional { k8s-addon : Text }
          }
      , default =
        { manifest = None Text
        , name = None Text
        , version = None Text
        , selector = None { k8s-addon : Text }
        }
      }

let spellcheck = AddonSpec::{=}

in  AddonSpec
