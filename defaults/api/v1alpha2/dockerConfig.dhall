let DockerConfig = ../../../types/api/v1alpha2/DockerConfig.dhall : Type

in    { authorizationPlugins =
          None Text
      , bridge =
          None Text
      , bridgeIP =
          None Text
      , dataRoot =
          None Text
      , defaultUlimit =
          None (List Text)
      , execRoot =
          None Text
      , experimental =
          None Bool
      , hosts =
          None (List Text)
      , ipMasq =
          None Bool
      , ipTables =
          None Bool
      , insecureRegistry =
          None Text
      , liveRestore =
          None Bool
      , logDriver =
          None Text
      , logLevel =
          None Text
      , logOpt =
          None (List Text)
      , metricsAddress =
          None Text
      , mtu =
          None Natural
      , registryMirrors =
          None (List Text)
      , storage =
          None Text
      , storageOpts =
          None (List Text)
      , userNamespaceRemap =
          None Text
      , version =
          None Text
      }
    : DockerConfig
