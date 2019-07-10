let UserData = ../../../types/api/v1alpha2/UserData.dhall : Type

let LoadBalancer = ../../../types/api/v1alpha2/LoadBalancer.dhall : Type

let VolumeSpec = ../../../types/api/v1alpha2/VolumeSpec.dhall : Type

let VolumeMountSpec = ../../../types/api/v1alpha2/VolumeMountSpec.dhall : Type

let HookSpec = ../../../types/api/v1alpha2/HookSpec.dhall

let FileAssetSpec = ../../../types/api/v1alpha2/FileAssetSpec.dhall : Type

let KubeletConfigSpec =
      ../../../types/api/v1alpha2/KubeletConfigSpec.dhall : Type

let IAMProfileSpec = ../../../types/api/v1alpha2/IAMProfileSpec.dhall : Type

in  { rootVolumeSize =
        None Natural
    , rootVolumeType =
        None Text
    , rootVolumeIops =
        None Natural
    , rootVolumeOptimization =
        None Bool
    , volumes =
        None (List VolumeSpec)
    , volumeMounts =
        None (List VolumeMountSpec)
    , hooks =
        None (List HookSpec.Union)
    , maxPrice =
        None Text
    , associatePublicIp =
        None Bool
    , additionalSecurityGroups =
        None (List Text)
    , cloudLabels =
        None (List { mapKey : Text, mapValue : Text })
    , nodeLabels =
        None (List { mapKey : Text, mapValue : Text })
    , fileAssets =
        None (List FileAssetSpec)
    , tenancy =
        None Text
    , kubelet =
        None KubeletConfigSpec
    , taints =
        None (List Text)
    , additionalUserData =
        None (List UserData)
    , suspendProcesses =
        None (List Text)
    , externalLoadBalancers =
        None (List LoadBalancer)
    , detailedInstanceMonitoring =
        None Bool
    , iam =
        None IAMProfileSpec
    , securityGroupOverride =
        None Text
    }
