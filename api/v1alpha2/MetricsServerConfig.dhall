let MetricsServerConfig =
      { Type =
          { enabled : Optional Bool
          , image : Optional Text
          , insecure : Optional Bool
          }
      , default =
        { enabled = None Bool, image = None Text, insecure = None Bool }
      }

let spellcheck = MetricsServerConfig::{=}

in  MetricsServerConfig
