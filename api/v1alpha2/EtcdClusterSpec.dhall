let EtcdMemberSpec = ./EtcdMemberSpec.dhall

let EtcdBackupSpec = ./EtcdBackupSpec.dhall

let EtcdManagerSpec = ./EtcdManagerSpec.dhall

let EtcdClusterSpec =
      { Type =
          { name : Text
          , cpuRequest : Optional Text
          , memoryRequest : Optional Text
          , provider : Optional Text
          , etcdMembers : List EtcdMemberSpec.Type
          , enableEtcdTLS : Optional Bool
          , enableTLSAuth : Optional Bool
          , version : Optional Text
          , leaderElectionTimeout : Optional Text
          , heartbeatInterval : Optional Text
          , image : Optional Text
          , backups : Optional EtcdBackupSpec.Type
          , manager : Optional EtcdManagerSpec.Type
          }
      , default =
        { provider = None Text
        , cpuRequest = None Text
        , memoryRequest = None Text
        , enableEtcdTLS = None Bool
        , enableTLSAuth = None Bool
        , version = None Text
        , leaderElectionTimeout = None Text
        , heartbeatInterval = None Text
        , image = None Text
        , backups = None EtcdBackupSpec.Type
        , manager = None EtcdManagerSpec.Type
        }
      }

let spellcheck =
      EtcdClusterSpec::{
      , name = "required"
      , etcdMembers = [] : List EtcdMemberSpec.Type
      }

in  EtcdClusterSpec
