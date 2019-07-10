let LeaderElectionConfiguration = ./LeaderElectionConfiguration.dhall

in    { master :
          Optional Text
      , logLevel :
          Optional Natural
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
      , configureCloudRoutes :
          Optional Bool
      , cidrAllocatorType :
          Optional Text
      , leaderElection :
          Optional LeaderElectionConfiguration
      , useServiceAccountCredentials :
          Optional Bool
      }
    : Type
