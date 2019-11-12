{ Type =
    { version : Optional Text
    , accessLog : Optional Text
    , agentLabels : Optional (List Text)
    , allowLocalHost : Optional Text
    , autoIpv5NodeRoutes : Optional Bool
    , bpfRoot : Optional Text
    , containerRuntime : Optional (List Text)
    , containerRuntimeEndpoint :
        Optional (List { mapKey : Text, mapValue : Text })
    , debug : Optional Bool
    , debugVerbose : Optional Bool
    , device : Optional Text
    , disableConntrack : Optional Bool
    , disableIpv4 : Optional Bool
    , disableK8sServices : Optional Bool
    , enablePolicy : Optional Text
    , enableTracing : Optional Text
    , envoyLog : Optional Text
    , ipv4ClusterCidrMaskSize : Optional Natural
    , ipv4Node : Optional Text
    , ipv4Range : Optional Text
    , ipv4ServiceRange : Optional Text
    , ipv6ClusterAllocCidr : Optional Text
    , k8sApiServer : Optional Text
    , k8sKubeconfigPath : Optional Text
    , keepBpfTemplates : Optional Bool
    , keepConfig : Optional Bool
    , labelPrefixFile : Optional Text
    , labels : Optional (List Text)
    , lb : Optional Text
    , libDir : Optional Text
    , logDrivers : Optional (List Text)
    , logOpt : Optional (List { mapKey : Text, mapValue : Text })
    , logstash : Optional Bool
    , logstashAgent : Optional Text
    , logstashProbeTimer : Optional Natural
    , disableMasquerade : Optional Bool
    , nat46Range : Optional Text
    , pprof : Optional Bool
    , prefilterDevice : Optional Text
    , prometheusServeAddr : Optional Text
    , restore : Optional Bool
    , singleClusterRoute : Optional Bool
    , socketPath : Optional Text
    , stateDir : Optional Text
    , tracePayloadLen : Optional Natural
    , tunnel : Optional Text
    }
, default =
    { version = None Text
    , accessLog = None Text
    , agentLabels = None (List Text)
    , allowLocalHost = None Text
    , autoIpv5NodeRoutes = None Bool
    , bpfRoot = None Text
    , containerRuntime = None (List Text)
    , containerRuntimeEndpoint = None (List { mapKey : Text, mapValue : Text })
    , debug = None Bool
    , debugVerbose = None Bool
    , device = None Text
    , disableConntrack = None Bool
    , disableIpv4 = None Bool
    , disableK8sServices = None Bool
    , enablePolicy = None Text
    , enableTracing = None Text
    , envoyLog = None Text
    , ipv4ClusterCidrMaskSize = None Natural
    , ipv4Node = None Text
    , ipv4Range = None Text
    , ipv4ServiceRange = None Text
    , ipv6ClusterAllocCidr = None Text
    , k8sApiServer = None Text
    , k8sKubeconfigPath = None Text
    , keepBpfTemplates = None Bool
    , keepConfig = None Bool
    , labelPrefixFile = None Text
    , labels = None (List Text)
    , lb = None Text
    , libDir = None Text
    , logDrivers = None (List Text)
    , logOpt = None (List { mapKey : Text, mapValue : Text })
    , logstash = None Bool
    , logstashAgent = None Text
    , logstashProbeTimer = None Natural
    , disableMasquerade = None Bool
    , nat46Range = None Text
    , pprof = None Bool
    , prefilterDevice = None Text
    , prometheusServeAddr = None Text
    , restore = None Bool
    , singleClusterRoute = None Bool
    , socketPath = None Text
    , stateDir = None Text
    , tracePayloadLen = None Natural
    , tunnel = None Text
    }
}
