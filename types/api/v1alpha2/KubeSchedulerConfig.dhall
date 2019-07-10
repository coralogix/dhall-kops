let LeaderElectionConfiguration = ./LeaderElectionConfiguration.dhall

in    { master :
          Optional Text
      , logLevel :
          Optional Natural
      , image :
          Optional Text
      , leaderElection :
          Optional LeaderElectionConfiguration
      , usePolicyConfigMap :
          Optional Bool
      , featureGates :
          Optional (List { mapKey : Text, mapValue : Text })
      }
    : Type
