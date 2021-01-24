let CertManagerConfig =
      { Type = { enabled : Optional Bool }, default.enabled = None Bool }

let spellcheck = CertManagerConfig::{=}

in  CertManagerConfig
