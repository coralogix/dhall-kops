let AmazonVPC =
      { Type =
          { imageName : Optional Text
          , env : Optional (List { name : Text, value : Text })
          }
      , default =
        { imageName = None Text
        , env = None (List { name : Text, value : Text })
        }
      }

let spellcheck = AmazonVPC::{=}

in  AmazonVPC
