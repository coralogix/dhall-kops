let LeaderElectionConfiguration = ./LeaderElectionConfiguration.dhall

let KubeSchedulerConfig =
      { Type =
          { master : Optional Text
          , logLevel : Optional Natural
          , image : Optional Text
          , leaderElection : Optional LeaderElectionConfiguration.Type
          , usePolicyConfigMap : Optional Bool
          , featureGates : Optional (List { mapKey : Text, mapValue : Text })
          , maxPersistentVolumes : Optional Natural
          , qps : Optional Text
          , burst : Optional Natural
          , authenticationKubeconfig : Optional Text
          , authorizationKubeconfig : Optional Text
          , authorizationAlwaysAllowPaths : Optional Text
          , enableProfiling : Optional Bool
          }
      , default =
        { master = None Text
        , logLevel = None Natural
        , image = None Text
        , leaderElection = None LeaderElectionConfiguration.Type
        , usePolicyConfigMap = None Bool
        , featureGates = None (List { mapKey : Text, mapValue : Text })
        , maxPersistentVolumes = None Natural
        , qps = None Text
        , burst = None Natural
        , authenticationKubeconfig = None Text
        , authorizationKubeconfig = None Text
        , authorizationAlwaysAllowPaths = None Text
        , enableProfiling = None Bool
        }
      }

let spellcheck = KubeSchedulerConfig::{=}

in  KubeSchedulerConfig
