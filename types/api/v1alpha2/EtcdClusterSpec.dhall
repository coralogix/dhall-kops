let EtcdMemberSpec = ./EtcdMemberSpec.dhall

let EtcdBackupSpec = ./EtcdBackupSpec.dhall

let EtcdManagerSpec = ./EtcdManagerSpec.dhall

in    { name :
          Text
      , provider :
          Optional Text
      , etcdMembers :
          List EtcdMemberSpec
      , enabledEtcdTLS :
          Optional Bool
      , enableTLSAuth :
          Optional Bool
      , version :
          Optional Text
      , leaderElectionTimeout :
          Optional Text
      , heartbeatInterval :
          Optional Text
      , image :
          Optional Text
      , backups :
          Optional EtcdBackupSpec
      , manager :
          Optional EtcdManagerSpec
      }
    : Type
