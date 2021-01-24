let Canal =
      { Type =
          { chainInsertMode : Optional Text
          , cpuRequest : Optional Text
          , defaultEndpointToHostAction : Optional Text
          , disableFlannelForwardRules : Optional Bool
          , disableTxChecksumOffloading : Optional Bool
          , iptablesBackend : Optional Text
          , logSeveritySys : Optional Text
          , mtu : Optional Natural
          , prometheusGoMetricsEnabled : Optional Bool
          , prometheusMetricsEnabled : Optional Bool
          , prometheusMetricsPort : Optional Natural
          , prometheusProcessMetricsEnabled : Optional Bool
          , typhaPrometheusMetricsEnabled : Optional Bool
          , typhaPrometheusMetricsPort : Optional Natural
          , typhaReplicas : Optional Natural
          }
      , default =
        { chainInsertMode = None Text
        , cpuRequest = None Text
        , defaultEndpointToHostAction = None Text
        , disableFlannelForwardRules = None Bool
        , disableTxChecksumOffloading = None Bool
        , iptablesBackend = None Text
        , logSeveritySys = None Text
        , mtu = None Natural
        , prometheusGoMetricsEnabled = None Bool
        , prometheusMetricsEnabled = None Bool
        , prometheusMetricsPort = None Natural
        , prometheusProcessMetricsEnabled = None Bool
        , typhaPrometheusMetricsEnabled = None Bool
        , typhaPrometheusMetricsPort = None Natural
        , typhaReplicas = None Natural
        }
      }

let spellcheck = Canal::{=}

in  Canal
