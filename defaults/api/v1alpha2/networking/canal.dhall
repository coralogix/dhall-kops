let Canal = ../../../../types/api/v1alpha2/networking/Canal.dhall

in    { chainInsertMode =
          None Text
      , defaultEndpointToHostAction =
          None Text
      , disableFlannelForwardRules =
          None Bool
      , logSeveritySys =
          None Text
      , mtu =
          None Natural
      , prometheusGoMetricsEnabled =
          None Bool
      , prometheusMetricsEnabled =
          None Bool
      , prometheusMetricsPort =
          None Natural
      , prometheusProcessMetricsEnabled =
          None Bool
      }
    : Canal
