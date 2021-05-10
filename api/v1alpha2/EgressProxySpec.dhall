let HTTPProxy = ./HTTPProxy.dhall

let EgressProxySpec =
      { Type = { httpProxy : Optional HTTPProxy.Type, excludes : Optional Text }
      , default = { httpProxy = None HTTPProxy.Type, excludes = None Text }
      }

let spellcheck = EgressProxySpec::{=}

in  EgressProxySpec
