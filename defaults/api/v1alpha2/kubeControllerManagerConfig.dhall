let LeaderElectionConfiguration =
      ../../../types/api/v1alpha2/LeaderElectionConfiguration.dhall : Type

let KubeControllerManagerConfig =
      ../../../types/api/v1alpha2/KubeControllerManagerConfig.dhall : Type

in    { master =
          None Text
      , logLevel =
          None Natural
      , serviceAccountPrivateKeyFile =
          None Text
      , image =
          None Text
      , cloudProvider =
          None Text
      , clusterName =
          None Text
      , clusterCIDR =
          None Text
      , allocateNodeCIDRs =
          None Bool
      , nodeCIDRMaskSize =
          None Natural
      , configureCloudRoutes =
          None Bool
      , controllers =
          None (List Text)
      , cidrAllocatorType =
          None Text
      , rootCAFile =
          None Text
      , leaderElection =
          None LeaderElectionConfiguration
      , attachDetachReconcileSyncPeriod =
          None Text
      , terminatedPodGCThreshold =
          None Natural
      , nodeMonitorPeriod =
          None Text
      , nodeMonitorGracePeriod =
          None Text
      , podEvictionTimeout =
          None Text
      , useServiceAccountCredentials =
          None Bool
      , horizontalPodAutoscalerSyncPeriod =
          None Text
      , horizontalPodAutoscalerDownscaleDelay =
          None Text
      , horizontalPodAutoscalerUpscaleDelay =
          None Text
      , horizontalPodAutoscalerTolerance =
          None Double
      , horizontalPodAutoscalerUseRestClients =
          None Bool
      , featureGates =
          None (List { mapKey : Text, mapValue : Text })
      }
    : KubeControllerManagerConfig
