let NodeTerminationHandlerConfig =
      { Type =
          { enabled : Optional Bool
          , enableSpotInterruptionDraining : Optional Bool
          , enableScheduledEventDraining : Optional Bool
          , enablePrometheusMetrics : Optional Bool
          }
      , default =
        { enabled = None Bool
        , enableSpotInterruptionDraining = None Bool
        , enableScheduledEventDraining = None Bool
        , enablePrometheusMetrics = None Bool
        }
      }

let spellcheck = NodeTerminationHandlerConfig::{=}

in  NodeTerminationHandlerConfig
