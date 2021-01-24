let EtcdMemberSpec =
      { Type =
          { name : Text
          , instanceGroup : Text
          , volumeType : Optional Text
          , volumeIops : Optional Natural
          , volumeThroughput : Optional Natural
          , volumeSize : Optional Natural
          , kmsKeyId : Optional Text
          , encryptedVolume : Optional Bool
          }
      , default =
        { volumeType = None Text
        , volumeIops = None Natural
        , volumeThroughput = None Natural
        , volumeSize = None Natural
        , kmsKeyId = None Text
        , encryptedVolume = None Bool
        }
      }

let spellcheck =
      EtcdMemberSpec::{ name = "required", instanceGroup = "required" }

in  EtcdMemberSpec
