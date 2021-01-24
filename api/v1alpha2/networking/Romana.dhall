let Romana =
      { Type =
          { daemonServiceIP : Optional Text, etcdServiceIP : Optional Text }
      , default = { daemonServiceIP = None Text, etcdServiceIP = None Text }
      }

let spellcheck = Romana::{=}

in  Romana
