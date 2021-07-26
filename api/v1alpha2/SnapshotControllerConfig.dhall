let SnapshotControllerConfig =
      { Type = { enabled : Optional Bool, installDefaultClass : Optional Bool }
      , default = { enabled = None Bool, installDefaultClass = None Bool }
      }

let spellcheck = SnapshotControllerConfig::{=}

in  SnapshotControllerConfig
