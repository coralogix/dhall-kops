let MetricsServerConfig =
      { Type = { enabled : Optional Bool, image : Optional Text }
      , default = { enabled = None Bool, image = None Text }
      }

let spellcheck = MetricsServerConfig::{=}

in  MetricsServerConfig
