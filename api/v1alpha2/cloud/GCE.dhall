let Common = ./Common.dhall

let Spotinst = ./Spotinst.dhall

let GCE =
      { Type =
            Common.Type
          ⩓ Spotinst.Type
          ⩓ { gceServiceAccount : Optional Text
            , multizone : Optional Bool
            , nodeTags : Optional Text
            , nodeInstancePrefix : Optional Text
            }
      , default =
            Common.default
          ∧ Spotinst.default
          ∧ { gceServiceAccount = None Text
            , multizone = None Bool
            , nodeTags = None Text
            , nodeInstancePrefix = None Text
            }
      }

let spellcheck = GCE::{=}

in  GCE
