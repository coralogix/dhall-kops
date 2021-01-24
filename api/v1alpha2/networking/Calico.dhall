let Calico =
      { Type =
          { registry : Optional Text
          , version : Optional Text
          , awsSrcDstCheck : Optional Text
          , bpfEnabled : Optional Bool
          , bpfExternalServiceMode : Optional Text
          , bpfKubeProxyIptablesCleanupEnabled : Optional Bool
          , bpfLogLevel : Optional Text
          , chainInsertMode : Optional Text
          , cpuRequest : Optional Text
          , crossSubnet : Optional Bool
          , encapsulationMode : Optional Text
          , ipipMode : Optional Text
          , ipv4AutoDetectionMethod : Optional Text
          , ipv6AutoDetectionMethod : Optional Text
          , iptablesBackend : Optional Text
          , logSeverityScreen : Optional Text
          , mtu : Optional Natural
          , prometheusMetricsEnabled : Optional Bool
          , prometheusMetricsPort : Optional Natural
          , prometheusGoMetricsEnabled : Optional Bool
          , prometheusProcessMetricsEnabled : Optional Bool
          , majorVersion : Optional Text
          , typhaPrometheusMetricsEnabled : Optional Text
          , typhaPrometheusMetricsPort : Optional Text
          , typhaReplicas : Optional Natural
          , wireguardEnabled : Optional Bool
          }
      , default =
        { registry = None Text
        , version = None Text
        , awsSrcDstCheck = None Text
        , bpfEnabled = None Bool
        , bpfExternalServiceMode = None Text
        , bpfKubeProxyIptablesCleanupEnabled = None Bool
        , bpfLogLevel = None Text
        , chainInsertMode = None Text
        , cpuRequest = None Text
        , crossSubnet = None Bool
        , encapsulationMode = None Text
        , ipipMode = None Text
        , ipv4AutoDetectionMethod = None Text
        , ipv6AutoDetectionMethod = None Text
        , iptablesBackend = None Text
        , logSeverityScreen = None Text
        , mtu = None Natural
        , prometheusMetricsEnabled = None Bool
        , prometheusMetricsPort = None Natural
        , prometheusGoMetricsEnabled = None Bool
        , prometheusProcessMetricsEnabled = None Bool
        , majorVersion = None Text
        , typhaPrometheusMetricsEnabled = None Text
        , typhaPrometheusMetricsPort = None Text
        , typhaReplicas = None Natural
        , wireguardEnabled = None Bool
        }
      }

let spellcheck = Calico::{=}

in  Calico
