let HubbleSpec =
      { Type = { enabled : Optional Bool, metrics : Optional (List Text) }
      , default = { enabled = None Bool, metrics = None (List Text) }
      }

let spellcheck = HubbleSpec::{=}

in  HubbleSpec
