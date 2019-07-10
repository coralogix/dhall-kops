let LeaderElectionConfiguration =
      ../../../types/api/v1alpha2/LeaderElectionConfiguration.dhall : Type

let KubeSchedulerConfig =
      ../../../types/api/v1alpha2/KubeSchedulerConfig.dhall : Type

in    { master =
          None Text
      , logLevel =
          None Natural
      , image =
          None Text
      , leaderElection =
          None LeaderElectionConfiguration
      , usePolicyConfigMap =
          None Bool
      , featureGates =
          None (List { mapKey : Text, mapValue : Text })
      }
    : KubeSchedulerConfig
