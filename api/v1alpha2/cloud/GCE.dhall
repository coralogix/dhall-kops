let GCE =
      { Type =
          { gceServiceAccount : Optional Text
          , multizone : Optional Bool
          , nodeTags : Optional Text
          , nodeInstancePrefix : Optional Text
          , spotinstProduct : Optional Text
          , spotinstOrientation : Optional Text
          }
      , default =
        { gceServiceAccount = None Text
        , multizone = None Bool
        , nodeTags = None Text
        , nodeInstancePrefix = None Text
        , spotinstProduct = None Text
        , spotinstOrientation = None Text
        }
      }

let spellcheck = GCE::{=}

in  GCE
