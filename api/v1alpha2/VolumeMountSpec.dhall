let VolumeMountSpec =
      { Type =
          { device : Optional Text
          , filesystem : Optional Text
          , formatOptions : Optional (List Text)
          , mountOptions : Optional (List Text)
          , path : Optional Text
          }
      , default =
        { device = None Text
        , filesystem = None Text
        , formatOptions = None (List Text)
        , mountOptions = None (List Text)
        , path = None Text
        }
      }

let spellcheck = VolumeMountSpec::{=}

in  VolumeMountSpec
