let LeaderElectionConfiguration = ./LeaderElectionConfiguration.dhall

in  { Type =
        { master : Optional Text
        , logLevel : Optional Natural
        , image : Optional Text
        , cloudProvider : Optional Text
        , clusterName : Optional Text
        , clusterCIDR : Optional Text
        , allocateNodeCIDRs : Optional Bool
        , configureCloudRoutes : Optional Bool
        , cidrAllocatorType : Optional Text
        , leaderElection : Optional LeaderElectionConfiguration.Type
        , useServiceAccountCredentials : Optional Bool
        }
    , default =
      { master = None Text
      , logLevel = None Natural
      , image = None Text
      , cloudProvider = None Text
      , clusterName = None Text
      , clusterCIDR = None Text
      , allocateNodeCIDRs = None Bool
      , configureCloudRoutes = None Bool
      , cidrAllocatorType = None Text
      , leaderElection = None LeaderElectionConfiguration.Type
      , useServiceAccountCredentials = None Bool
      }
    }
