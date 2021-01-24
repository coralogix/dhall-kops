let EtcdBackupSpec =
      { Type = { backupStore : Optional Text, image : Optional Text }
      , default = { backupStore = None Text, image = None Text }
      }

let spellcheck = EtcdBackupSpec::{=}

in  EtcdBackupSpec
