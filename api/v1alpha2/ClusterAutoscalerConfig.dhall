let ClusterAutoscalerConfig =
      { Type =
          { enabled : Optional Bool
          , expander : Optional Text
          , balanceSimilarNodeGroups : Optional Bool
          , scaleDownUtilitzationThreshold : Optional Text
          , skipNodesWithSystemPods : Optional Bool
          , skipNodesWithLocalStorage : Optional Bool
          , newPodScaleUpDelay : Optional Text
          , scaleDownDelayAfterAdd : Optional Text
          , image : Optional Text
          , memoryRequest : Optional Text
          , cpuRequest : Optional Text
          }
      , default =
        { enabled = None Bool
        , expander = None Text
        , balanceSimilarNodeGroups = None Bool
        , scaleDownUtilitzationThreshold = None Text
        , skipNodesWithSystemPods = None Bool
        , skipNodesWithLocalStorage = None Bool
        , newPodScaleUpDelay = None Text
        , scaleDownDelayAfterAdd = None Text
        , image = None Text
        , memoryRequest = None Text
        , cpuRequest = None Text
        }
      }

let spellcheck = ClusterAutoscalerConfig::{=}

in  ClusterAutoscalerConfig
