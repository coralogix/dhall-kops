let Cilium = ../../../../types/api/v1alpha2/networking/Cilium.dhall

in    { version =
          None Text
      , accessLog =
          None Text
      , agentLabels =
          None (List Text)
      , allowLocalHost =
          None Text
      , autoIpv5NodeRoutes =
          None Bool
      , bpfRoot =
          None Text
      , containerRuntime =
          None (List Text)
      , containerRuntimeEndpoint =
          None (List { mapKey : Text, mapValue : Text })
      , debug =
          None Bool
      , debugVerbose =
          None Bool
      , device =
          None Text
      , disableConntrack =
          None Bool
      , disableIpv4 =
          None Bool
      , disableK8sServices =
          None Bool
      , enablePolicy =
          None Text
      , enableTracing =
          None Text
      , envoyLog =
          None Text
      , ipv4ClusterCidrMaskSize =
          None Natural
      , ipv4Node =
          None Text
      , ipv4Range =
          None Text
      , ipv4ServiceRange =
          None Text
      , ipv6ClusterAllocCidr =
          None Text
      , k8sApiServer =
          None Text
      , k8sKubeconfigPath =
          None Text
      , keepBpfTemplates =
          None Bool
      , keepConfig =
          None Bool
      , labelPrefixFile =
          None Text
      , labels =
          None (List Text)
      , lb =
          None Text
      , libDir =
          None Text
      , logDrivers =
          None (List Text)
      , logOpt =
          None (List { mapKey : Text, mapValue : Text })
      , logstash =
          None Bool
      , logstashAgent =
          None Text
      , logstashProbeTimer =
          None Natural
      , disableMasquerade =
          None Bool
      , nat46Range =
          None Text
      , pprof =
          None Bool
      , prefilterDevice =
          None Text
      , prometheusServeAddr =
          None Text
      , restore =
          None Bool
      , singleClusterRoute =
          None Bool
      , socketPath =
          None Text
      , stateDir =
          None Text
      , tracePayloadLen =
          None Natural
      , tunnel =
          None Text
      }
    : Cilium
