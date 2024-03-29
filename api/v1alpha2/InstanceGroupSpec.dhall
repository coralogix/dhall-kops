let Map = (../../imports.dhall).Prelude.Map.Type

let MixedInstancesPolicySpec = ./MixedInstancesPolicySpec.dhall

let UserData = ./UserData.dhall

let LoadBalancer = ./LoadBalancer.dhall

let VolumeSpec = ./VolumeSpec.dhall

let VolumeMountSpec = ./VolumeMountSpec.dhall

let HookSpec = ./HookSpec.dhall

let FileAssetSpec = ./FileAssetSpec.dhall

let KubeletConfigSpec = ./KubeletConfigSpec.dhall

let IAMProfileSpec = ./IAMProfileSpec.dhall

let RollingUpdate = ./RollingUpdate.dhall

let InstanceMetadataOptions = ./InstanceMetadataOptions.dhall

let WarmPoolSpec = ./WarmPoolSpec.dhall

let InstanceGroupSpec =
      { Type =
          { role : Text
          , image : Text
          , minSize : Natural
          , maxSize : Natural
          , autoscale : Optional Bool
          , machineType : Text
          , mixedInstancesPolicy : Optional MixedInstancesPolicySpec.Type
          , rootVolumeSize : Optional Natural
          , rootVolumeType : Optional Text
          , rootVolumeIops : Optional Natural
          , rootVolumeThroughput : Optional Natural
          , rootVolumeOptimization : Optional Bool
          , rootVolumeDeleteOnTermination : Optional Bool
          , rootVolumeEncryption : Optional Bool
          , rootVolumeEncryptionKey : Optional Bool
          , volumes : Optional (List VolumeSpec.Type)
          , volumeMounts : Optional (List VolumeMountSpec.Type)
          , subnets : List Text
          , zones : Optional (List Text)
          , hooks : Optional (List HookSpec.Union)
          , maxPrice : Optional Text
          , spotDurationInMinutes : Optional Natural
          , cpuCredits : Optional Text
          , associatePublicIp : Optional Bool
          , additionalSecurityGroups : Optional (List Text)
          , cloudLabels : Optional (Map Text Text)
          , nodeLabels : Optional (Map Text Text)
          , fileAssets : Optional (List FileAssetSpec.Type)
          , tenancy : Optional Text
          , kubelet : Optional KubeletConfigSpec.Type
          , taints : Optional (List Text)
          , additionalUserData : Optional (List UserData.Type)
          , suspendProcesses : Optional (List Text)
          , externalLoadBalancers : Optional (List LoadBalancer)
          , detailedInstanceMonitoring : Optional Bool
          , iam : Optional IAMProfileSpec.Type
          , securityGroupOverride : Optional Text
          , instanceProtection : Optional Bool
          , sysctlParameters : Optional (List Text)
          , rollingUpdate : Optional RollingUpdate.Type
          , instanceInterruptionBehavior : Optional Text
          , compressUserData : Optional Bool
          , instanceMetadata : Optional InstanceMetadataOptions.Type
          , updatePolicy : Optional Text
          , warmPool : Optional WarmPoolSpec.Type
          }
      , default =
        { autoscale = None Bool
        , rootVolumeSize = None Natural
        , rootVolumeType = None Text
        , rootVolumeIops = None Natural
        , rootVolumeThroughput = None Natural
        , rootVolumeOptimization = None Bool
        , rootVolumeDeleteOnTermination = None Bool
        , rootVolumeEncryption = None Bool
        , rootVolumeEncryptionKey = None Bool
        , volumes = None (List VolumeSpec.Type)
        , volumeMounts = None (List VolumeMountSpec.Type)
        , hooks = None (List HookSpec.Union)
        , maxPrice = None Text
        , spotDurationInMinutes = None Natural
        , cpuCredits = None Text
        , mixedInstancesPolicy = None MixedInstancesPolicySpec.Type
        , associatePublicIp = None Bool
        , additionalSecurityGroups = None (List Text)
        , cloudLabels = None (Map Text Text)
        , nodeLabels = None (Map Text Text)
        , fileAssets = None (List FileAssetSpec.Type)
        , tenancy = None Text
        , kubelet = None KubeletConfigSpec.Type
        , taints = None (List Text)
        , additionalUserData = None (List UserData.Type)
        , suspendProcesses = None (List Text)
        , externalLoadBalancers = None (List LoadBalancer)
        , detailedInstanceMonitoring = None Bool
        , iam = None IAMProfileSpec.Type
        , securityGroupOverride = None Text
        , zones = None (List Text)
        , instanceProtection = None Bool
        , sysctlParameters = None (List Text)
        , rollingUpdate = None RollingUpdate.Type
        , instanceInterruptionBehavior = None Text
        , compressUserData = None Bool
        , instanceMetadata = None InstanceMetadataOptions.Type
        , updatePolicy = None Text
        , warmPool = None WarmPoolSpec.Type
        }
      }

let spellcheck =
      InstanceGroupSpec::{
      , role = "required"
      , image = "required"
      , minSize = 1
      , maxSize = 1
      , machineType = "required"
      , subnets = [] : List Text
      }

in  InstanceGroupSpec
