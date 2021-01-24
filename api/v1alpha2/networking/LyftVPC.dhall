let LyftVPC =
      { Type =
          { subnetTags : Optional (List { mapKey : Text, mapValue : Text }) }
      , default.subnetTags = None (List { mapKey : Text, mapValue : Text })
      }

let spellcheck = LyftVPC::{=}

in  LyftVPC
