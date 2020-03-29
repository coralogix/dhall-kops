{ Type =
    { crossSubnet : Optional Bool
    , logSeverityScreen : Optional Text
    , mtu : Optional Natural
    , prometheusMetricsEnabled : Optional Bool
    , prometheusMetricsPort : Optional Natural
    , prometheusGoMetricsEnabled : Optional Bool
    , prometheusProcessMetricsEnabled : Optional Bool
    , majorVersion : Text
    }
, default =
  { crossSubnet = None Bool
  , logSeverityScreen = None Text
  , mtu = None Natural
  , prometheusMetricsEnabled = None Bool
  , prometheusMetricsPort = None Natural
  , prometheusGoMetricsEnabled = None Bool
  , prometheusProcessMetricsEnabled = None Bool
  }
}
