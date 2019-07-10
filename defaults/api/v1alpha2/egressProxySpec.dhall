let HTTPProxy = ../../../types/api/v1alpha2/HTTPProxy.dhall : Type

let EgressProxySpec = ../../../types/api/v1alpha2/EgressProxySpec.dhall : Type

in  { httpProxy = None HTTPProxy, proxyExcludes = None Text } : EgressProxySpec
