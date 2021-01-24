let Weave =
      { Type =
          { mtu : Optional Natural
          , connLimit : Optional Natural
          , noMasqLocal : Optional Natural
          , memoryRequest : Optional Text
          , cpuRequest : Optional Text
          , memoryLimit : Optional Text
          , cpuLimit : Optional Text
          , netExtraArgs : Optional Text
          , npcMemoryRequest : Optional Text
          , npcCPURequest : Optional Text
          , npcMemoryLimit : Optional Text
          , npcCPULimit : Optional Text
          , npcExtraArgs : Optional Text
          , version : Optional Text
          }
      , default =
        { mtu = None Natural
        , connLimit = None Natural
        , noMasqLocal = None Natural
        , memoryRequest = None Text
        , cpuRequest = None Text
        , memoryLimit = None Text
        , cpuLimit = None Text
        , netExtraArgs = None Text
        , npcMemoryRequest = None Text
        , npcCPURequest = None Text
        , npcMemoryLimit = None Text
        , npcCPULimit = None Text
        , npcExtraArgs = None Text
        , version = None Text
        }
      }

let spellcheck = Weave::{=}

in  Weave
