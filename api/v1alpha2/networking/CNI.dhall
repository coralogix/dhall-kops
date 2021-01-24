let CNI =
      { Type = { usesSecondaryIP : Optional Bool }
      , default.usesSecondaryIP = None Bool
      }

let spellcheck = CNI::{=}

in  CNI
