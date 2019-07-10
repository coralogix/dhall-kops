let EtcdBackupSpec = ../../../types/api/v1alpha2/EtcdBackupSpec.dhall : Type

let EtcdManagerSpec = ../../../types/api/v1alpha2/EtcdManagerSpec.dhall : Type

in  { provider =
        None Text
    , enabledEtcdTLS =
        None Bool
    , enableTLSAuth =
        None Bool
    , version =
        None Text
    , leaderElectionTimeout =
        None Text
    , heartbeatInterval =
        None Text
    , image =
        None Text
    , backups =
        None EtcdBackupSpec
    , manager =
        None EtcdManagerSpec
    }
