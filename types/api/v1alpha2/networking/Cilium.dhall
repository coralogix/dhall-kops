  { version :
      Optional Text
  , accessLog :
      Optional Text
  , agentLabels :
      Optional (List Text)
  , allowLocalHost :
      Optional Text
  , autoIpv5NodeRoutes :
      Optional Bool
  , bpfRoot :
      Optional Text
  , containerRuntime :
      Optional (List Text)
  , containerRuntimeEndpoint :
      Optional (List { mapKey : Text, mapValue : Text })
  , debug :
      Optional Bool
  , debugVerbose :
      Optional Bool
  , device :
      Optional Text
  , disableConntrack :
      Optional Bool
  , disableIpv4 :
      Optional Bool
  , disableK8sServices :
      Optional Bool
  , enablePolicy :
      Optional Text
  , enableTracing :
      Optional Text
  , envoyLog :
      Optional Text
  , ipv4ClusterCidrMaskSize :
      Optional Natural
  , ipv4Node :
      Optional Text
  , ipv4Range :
      Optional Text
  , ipv4ServiceRange :
      Optional Text
  , ipv6ClusterAllocCidr :
      Optional Text
  , k8sApiServer :
      Optional Text
  , k8sKubeconfigPath :
      Optional Text
  , keepBpfTemplates :
      Optional Bool
  , keepConfig :
      Optional Bool
  , labelPrefixFile :
      Optional Text
  , labels :
      Optional (List Text)
  , lb :
      Optional Text
  , libDir :
      Optional Text
  , logDrivers :
      Optional (List Text)
  , logOpt :
      Optional (List { mapKey : Text, mapValue : Text })
  , logstash :
      Optional Bool
  , logstashAgent :
      Optional Text
  , logstashProbeTimer :
      Optional Natural
  , disableMasquerade :
      Optional Bool
  , nat46Range :
      Optional Text
  , pprof :
      Optional Bool
  , prefilterDevice :
      Optional Text
  , prometheusServeAddr :
      Optional Text
  , restore :
      Optional Bool
  , singleClusterRoute :
      Optional Bool
  , socketPath :
      Optional Text
  , stateDir :
      Optional Text
  , tracePayloadLen :
      Optional Natural
  , tunnel :
      Optional Text
  }
: Type
