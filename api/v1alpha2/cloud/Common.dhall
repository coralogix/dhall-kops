let Common =
      { Type = { manageStorageClasses : Optional Bool }
      , default.manageStorageClasses = None Bool
      }

let spellcheck = Common::{=}

in  Common
