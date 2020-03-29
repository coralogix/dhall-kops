{ Type =
    { chainInsertMode : Optional Text
    , defaultEndpointToHostAction : Optional Text
    , disableFlannelForwardRules : Optional Bool
    , logSeveritySys : Optional Text
    , mtu : Optional Natural
    , prometheusGoMetricsEnabled : Optional Bool
    , prometheusMetricsEnabled : Optional Bool
    , prometheusMetricsPort : Optional Natural
    , prometheusProcessMetricsEnabled : Optional Bool
    }
, default =
  { chainInsertMode = None Text
  , defaultEndpointToHostAction = None Text
  , disableFlannelForwardRules = None Bool
  , logSeveritySys = None Text
  , mtu = None Natural
  , prometheusGoMetricsEnabled = None Bool
  , prometheusMetricsEnabled = None Bool
  , prometheusMetricsPort = None Natural
  , prometheusProcessMetricsEnabled = None Bool
  }
}
