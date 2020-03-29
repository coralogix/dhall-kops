{ Type =
    { authorizationPlugins : Optional Text
    , bridge : Optional Text
    , bridgeIP : Optional Text
    , dataRoot : Optional Text
    , defaultUlimit : Optional (List Text)
    , execRoot : Optional Text
    , experimental : Optional Bool
    , hosts : Optional (List Text)
    , ipMasq : Optional Bool
    , ipTables : Optional Bool
    , insecureRegistry : Optional Text
    , liveRestore : Optional Bool
    , logDriver : Optional Text
    , logLevel : Optional Text
    , logOpt : Optional (List Text)
    , metricsAddress : Optional Text
    , mtu : Optional Natural
    , registryMirrors : Optional (List Text)
    , storage : Optional Text
    , storageOpts : Optional (List Text)
    , userNamespaceRemap : Optional Text
    , version : Optional Text
    }
, default =
  { authorizationPlugins = None Text
  , bridge = None Text
  , bridgeIP = None Text
  , dataRoot = None Text
  , defaultUlimit = None (List Text)
  , execRoot = None Text
  , experimental = None Bool
  , hosts = None (List Text)
  , ipMasq = None Bool
  , ipTables = None Bool
  , insecureRegistry = None Text
  , liveRestore = None Bool
  , logDriver = None Text
  , logLevel = None Text
  , logOpt = None (List Text)
  , metricsAddress = None Text
  , mtu = None Natural
  , registryMirrors = None (List Text)
  , storage = None Text
  , storageOpts = None (List Text)
  , userNamespaceRemap = None Text
  , version = None Text
  }
}
