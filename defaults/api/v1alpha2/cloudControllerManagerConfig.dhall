let LeaderElectionConfiguration =
      ../../../types/api/v1alpha2/LeaderElectionConfiguration.dhall : Type

let CloudControllerManagerConfig =
      ../../../types/api/v1alpha2/CloudControllerManagerConfig.dhall : Type

in    { master =
          None Text
      , logLevel =
          None Natural
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
      , configureCloudRoutes =
          None Bool
      , cidrAllocatorType =
          None Text
      , leaderElection =
          None LeaderElectionConfiguration
      , useServiceAccountCredentials =
          None Bool
      }
    : CloudControllerManagerConfig
