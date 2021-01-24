let LeaderElectionConfiguration =
      { Type =
          { leaderElect : Optional Bool
          , leaderElectLeaseDuration : Optional Text
          , leaderElectRenewDeadlineDuration : Optional Text
          , leaderElectResourceLock : Optional Text
          , leaderElectResourceName : Optional Text
          , leaderElectResourceNamespace : Optional Text
          , leaderElectRetryPeriod : Optional Text
          }
      , default =
        { leaderElect = None Bool
        , leaderElectLeaseDuration = None Text
        , leaderElectRenewDeadlineDuration = None Text
        , leaderElectResourceLock = None Text
        , leaderElectResourceName = None Text
        , leaderElectResourceNamespace = None Text
        , leaderElectRetryPeriod = None Text
        }
      }

let spellcheck = LeaderElectionConfiguration::{=}

in  LeaderElectionConfiguration
