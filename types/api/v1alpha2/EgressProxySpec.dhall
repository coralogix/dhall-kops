let HTTPProxy = ./HTTPProxy.dhall

in  { httpProxy : Optional HTTPProxy, proxyExcludes : Optional Text } : Type
