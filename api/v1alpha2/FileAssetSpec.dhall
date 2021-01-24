let FileAssetSpec =
      { Type =
          { name : Text
          , path : Text
          , roles : Optional (List Text)
          , content : Text
          , isBase64 : Optional Bool
          }
      , default = { roles = None (List Text), isBase64 = None Bool }
      }

let spellcheck =
      FileAssetSpec::{
      , name = "required"
      , path = "required"
      , content = "required"
      }

in  FileAssetSpec
