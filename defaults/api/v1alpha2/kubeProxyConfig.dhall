let KubeProxyConfig = ../../../types/api/v1alpha2/KubeProxyConfig.dhall : Type

in    { image =
          None Text
      , cpuRequest =
          None Text
      , cpuLimit =
          None Text
      , memoryRequest =
          None Text
      , memoryLimit =
          None Text
      , logLevel =
          None Natural
      , clusterCIDR =
          None Text
      , hostnameOverride =
          None Text
      , bindAddress =
          None Text
      , master =
          None Text
      , enabled =
          None Bool
      , proxyMode =
          None Text
      , ipvsExcludeCidrs =
          None (List Text)
      , ipvsMinSyncPeriod =
          None Text
      , ipvsScheduler =
          None Text
      , ipvsSyncPeriod =
          None Text
      , featureGates =
          None (List { mapKey : Text, mapValue : Text })
      , conntrackMaxPerCore =
          None Natural
      , conntrackMin =
          None Natural
      }
    : KubeProxyConfig
