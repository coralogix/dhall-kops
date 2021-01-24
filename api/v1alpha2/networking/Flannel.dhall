let Flannel =
      { Type =
          { backend : Optional Text
          , disableTxChecksumOffloading : Optional Bool
          , iptablesResyncSeconds : Optional Natural
          }
      , default =
        { backend = None Text
        , disableTxChecksumOffloading = None Bool
        , iptablesResyncSeconds = None Natural
        }
      }

let spellcheck = Flannel::{=}

in  Flannel
