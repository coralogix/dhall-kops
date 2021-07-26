let WarmPoolSpec =
      { Type =
          { minSize : Optional Natural
          , maxSize : Optional Natural
          , enableLifecycleHook : Optional Bool
          }
      , default =
        { minSize = None Natural
        , maxSize = None Natural
        , enableLifecycleHook = None Bool
        }
      }

let spellcheck = WarmPoolSpec::{=}

in  WarmPoolSpec
