let LeaderElectionConfiguration = ./LeaderElectionConfiguration.dhall

in  { Type =
        { master : Optional Text
        , logLevel : Optional Natural
        , serviceAccountPrivateKeyFile : Optional Text
        , image : Optional Text
        , cloudProvider : Optional Text
        , clusterName : Optional Text
        , clusterCIDR : Optional Text
        , allocateNodeCIDRs : Optional Bool
        , nodeCIDRMaskSize : Optional Natural
        , configureCloudRoutes : Optional Bool
        , controllers : Optional (List Text)
        , cidrAllocatorType : Optional Text
        , rootCAFile : Optional Text
        , leaderElection : Optional LeaderElectionConfiguration.Type
        , attachDetachReconcileSyncPeriod : Optional Text
        , terminatedPodGCThreshold : Optional Natural
        , nodeMonitorPeriod : Optional Text
        , nodeMonitorGracePeriod : Optional Text
        , podEvictionTimeout : Optional Text
        , useServiceAccountCredentials : Optional Bool
        , horizontalPodAutoscalerSyncPeriod : Optional Text
        , horizontalPodAutoscalerDownscaleDelay : Optional Text
        , horizontalPodAutoscalerDownscaleStabilization : Optional Text
        , horizontalPodAutoscalerUpscaleDelay : Optional Text
        , horizontalPodAutoscalerTolerance : Optional Double
        , horizontalPodAutoscalerUseRestClients : Optional Bool
        , featureGates : Optional (List { mapKey : Text, mapValue : Text })
        , tlsCipherSuites : Optional (List Text)
        , tlsMinVersion : Optional Text
        , minResyncPeriod : Optional Text
        , kubeAPIQPS : Optional Natural
        , kubeAPIBurst : Optional Natural
        }
    , default =
      { master = None Text
      , logLevel = None Natural
      , serviceAccountPrivateKeyFile = None Text
      , image = None Text
      , cloudProvider = None Text
      , clusterName = None Text
      , clusterCIDR = None Text
      , allocateNodeCIDRs = None Bool
      , nodeCIDRMaskSize = None Natural
      , configureCloudRoutes = None Bool
      , controllers = None (List Text)
      , cidrAllocatorType = None Text
      , rootCAFile = None Text
      , leaderElection = None LeaderElectionConfiguration.Type
      , attachDetachReconcileSyncPeriod = None Text
      , terminatedPodGCThreshold = None Natural
      , nodeMonitorPeriod = None Text
      , nodeMonitorGracePeriod = None Text
      , podEvictionTimeout = None Text
      , useServiceAccountCredentials = None Bool
      , horizontalPodAutoscalerSyncPeriod = None Text
      , horizontalPodAutoscalerDownscaleDelay = None Text
      , horizontalPodAutoscalerDownscaleStabilization = None Text
      , horizontalPodAutoscalerUpscaleDelay = None Text
      , horizontalPodAutoscalerTolerance = None Double
      , horizontalPodAutoscalerUseRestClients = None Bool
      , featureGates = None (List { mapKey : Text, mapValue : Text })
      , tlsCipherSuites = None (List Text)
      , tlsMinVersion = None Text
      , minResyncPeriod = None Text
      , kubeAPIQPS = None Natural
      , kubeAPIBurst = None Natural
      }
    }
