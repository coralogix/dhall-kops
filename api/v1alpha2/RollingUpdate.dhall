let Kubernetes = (../../imports.dhall).Kubernetes

let RollingUpdate =
      { Type =
          { drainAndTerminate : Optional Bool
          , maxUnavailable : Optional Kubernetes.IntOrString
          , maxSurge : Optional Kubernetes.IntOrString
          }
      , default =
        { drainAndTerminate = None Bool
        , maxUnavailable = None Kubernetes.IntOrString
        , maxSurge = None Kubernetes.IntOrString
        }
      }

let spellcheck = RollingUpdate::{=}

in  RollingUpdate
