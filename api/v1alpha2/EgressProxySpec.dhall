let HTTPProxy = ./HTTPProxy.dhall

in  { Type =
        { httpProxy : Optional HTTPProxy.Type, proxyExcludes : Optional Text }
    , default = { httpProxy = None HTTPProxy.Type, proxyExcludes = None Text }
    }
