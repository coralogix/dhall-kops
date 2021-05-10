let CertManagerConfig =
      { Type = { enabled : Optional Bool, image : Optional Text }
      , default = { enabled = None Bool, image = None Text }
      }

let spellcheck = CertManagerConfig::{=}

in  CertManagerConfig
