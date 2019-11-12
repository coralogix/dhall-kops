let LeaderElectionConfiguration = ./LeaderElectionConfiguration.dhall

in  { Type =
        { master : Optional Text
        , logLevel : Optional Natural
        , image : Optional Text
        , leaderElection : Optional LeaderElectionConfiguration.Type
        , usePolicyConfigMap : Optional Bool
        , featureGates : Optional (List { mapKey : Text, mapValue : Text })
        }
    , default =
        { master = None Text
        , logLevel = None Natural
        , image = None Text
        , leaderElection = None LeaderElectionConfiguration.Type
        , usePolicyConfigMap = None Bool
        , featureGates = None (List { mapKey : Text, mapValue : Text })
        }
    }
