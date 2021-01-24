let AddonSpec =
      { Type =
          { manifest : Text
          , name : Optional Text
          , version : Optional Text
          , selector : Optional { k8s-addon : Text }
          }
      , default =
        { name = None Text
        , version = None Text
        , selector = None { k8s-addon : Text }
        }
      }

let spellcheck = AddonSpec::{ manifest = "test" }

in  AddonSpec
