let PackagesConfig = ./PackagesConfig.dhall

let DockerConfig =
      { Type =
          { authorizationPlugins : Optional (List Text)
          , bridge : Optional Text
          , bridgeIP : Optional Text
          , dataRoot : Optional Text
          , defaultUlimit : Optional (List Text)
          , defaultRuntime : Optional Text
          , execOpt : Optional (List Text)
          , execRoot : Optional Text
          , experimental : Optional Bool
          , healthCheck : Optional Bool
          , hosts : Optional (List Text)
          , ipMasq : Optional Bool
          , ipTables : Optional Bool
          , insecureRegistry : Optional Text
          , insecureRegistries : Optional (List Text)
          , liveRestore : Optional Bool
          , logDriver : Optional Text
          , logLevel : Optional Text
          , logOpt : Optional (List Text)
          , metricsAddress : Optional Text
          , mtu : Optional Natural
          , packages : Optional PackagesConfig.Type
          , registryMirrors : Optional (List Text)
          , runtimes : Optional (List Text)
          , selinuxEnabled : Optional Bool
          , skipInstall : Optional Bool
          , storage : Optional Text
          , storageOpts : Optional (List Text)
          , userNamespaceRemap : Optional Text
          , version : Optional Text
          }
      , default =
        { authorizationPlugins = None (List Text)
        , bridge = None Text
        , bridgeIP = None Text
        , dataRoot = None Text
        , defaultUlimit = None (List Text)
        , defaultRuntime = None Text
        , execOpt = None (List Text)
        , execRoot = None Text
        , experimental = None Bool
        , healthCheck = None Bool
        , hosts = None (List Text)
        , ipMasq = None Bool
        , ipTables = None Bool
        , insecureRegistry = None Text
        , insecureRegistries = None (List Text)
        , liveRestore = None Bool
        , logDriver = None Text
        , logLevel = None Text
        , logOpt = None (List Text)
        , metricsAddress = None Text
        , mtu = None Natural
        , packages = None PackagesConfig.Type
        , registryMirrors = None (List Text)
        , runtimes = None (List Text)
        , selinuxEnabled = None Bool
        , skipInstall = None Bool
        , storage = None Text
        , storageOpts = None (List Text)
        , userNamespaceRemap = None Text
        , version = None Text
        }
      }

let spellcheck = DockerConfig::{=}

in  DockerConfig
