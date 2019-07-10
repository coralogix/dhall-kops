let LeaderElectionConfiguration = ./LeaderElectionConfiguration.dhall

in    { master :
          Optional Text
      , logLevel :
          Optional Natural
      , serviceAccountPrivateKeyFile :
          Optional Text
      , image :
          Optional Text
      , cloudProvider :
          Optional Text
      , clusterName :
          Optional Text
      , clusterCIDR :
          Optional Text
      , allocateNodeCIDRs :
          Optional Bool
      , nodeCIDRMaskSize :
          Optional Natural
      , configureCloudRoutes :
          Optional Bool
      , controllers :
          Optional (List Text)
      , cidrAllocatorType :
          Optional Text
      , rootCAFile :
          Optional Text
      , leaderElection :
          Optional LeaderElectionConfiguration
      , attachDetachReconcileSyncPeriod :
          Optional Text
      , terminatedPodGCThreshold :
          Optional Natural
      , nodeMonitorPeriod :
          Optional Text
      , nodeMonitorGracePeriod :
          Optional Text
      , podEvictionTimeout :
          Optional Text
      , useServiceAccountCredentials :
          Optional Bool
      , horizontalPodAutoscalerSyncPeriod :
          Optional Text
      , horizontalPodAutoscalerDownscaleDelay :
          Optional Text
      , horizontalPodAutoscalerUpscaleDelay :
          Optional Text
      , horizontalPodAutoscalerTolerance :
          Optional Double
      , horizontalPodAutoscalerUseRestClients :
          Optional Bool
      , featureGates :
          Optional (List { mapKey : Text, mapValue : Text })
      }
    : Type
