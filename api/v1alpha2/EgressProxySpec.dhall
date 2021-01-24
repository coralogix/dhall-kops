let HTTPProxy = ./HTTPProxy.dhall

let EgressProxySpec =
      { Type =
          { httpProxy : Optional HTTPProxy.Type, proxyExcludes : Optional Text }
      , default = { httpProxy = None HTTPProxy.Type, proxyExcludes = None Text }
      }

let spellcheck = EgressProxySpec::{=}

in  EgressProxySpec
