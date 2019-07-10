let EtcdBackupSpec = ../../../types/api/v1alpha2/EtcdBackupSpec.dhall : Type

in  { backupStore = None Text, image = None Text } : EtcdBackupSpec
