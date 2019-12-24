{ Type =
    { name : Text
    , instanceGroup : Text
    , volumeType : Optional Text
    , volumeIops : Optional Natural
    , volumeSize : Optional Natural
    , kmsKeyId : Optional Text
    , encryptedVolume : Optional Bool
    }
, default =
    { volumeType = None Text
    , volumeIops = None Natural
    , volumeSize = None Natural
    , kmsKeyId = None Text
    , encryptedVolume = None Bool
    }
}