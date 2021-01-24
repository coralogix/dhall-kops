let VolumeSpec =
      { Type =
          { deleteOnTermination : Optional Bool
          , device : Optional Text
          , encrypted : Optional Bool
          , iops : Optional Natural
          , throughput : Optional Natural
          , key : Optional Text
          , size : Optional Natural
          , type : Optional Text
          }
      , default =
        { deleteOnTermination = None Bool
        , device = None Text
        , encrypted = None Bool
        , iops = None Natural
        , throughput = None Natural
        , key = None Text
        , size = None Natural
        , type = None Text
        }
      }

let spellcheck = VolumeSpec::{=}

in  VolumeSpec
