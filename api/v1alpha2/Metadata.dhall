let Metadata =
      { Type =
          { name : Text
          , labels : Optional (List { mapKey : Text, mapValue : Text })
          }
      , default.labels = None (List { mapKey : Text, mapValue : Text })
      }

let spellcheck = Metadata::{ name = "required" }

in  Metadata
