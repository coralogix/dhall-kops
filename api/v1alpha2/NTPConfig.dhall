let NTPConfig =
      { Type = { managed : Optional Bool }, default.managed = None Bool }

let spellcheck = NTPConfig::{=}

in  NTPConfig
