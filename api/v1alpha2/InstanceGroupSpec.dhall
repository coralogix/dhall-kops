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

in  { Type =
        { role : Text
        , image : Text
        , minSize : Natural
        , maxSize : Natural
        , machineType : Text
        , mixedInstancesPolicy : Optional MixedInstancesPolicySpec.Type
        , rootVolumeSize : Optional Natural
        , rootVolumeType : Optional Text
        , rootVolumeIops : Optional Natural
        , rootVolumeOptimization : Optional Bool
        , volumes : Optional (List VolumeSpec.Type)
        , volumeMounts : Optional (List VolumeMountSpec.Type)
        , subnets : List Text
        , zones : Optional (List Text)
        , hooks : Optional (List HookSpec.Union)
        , maxPrice : Optional Text
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
        }
    , default =
        { rootVolumeSize = None Natural
        , rootVolumeType = None Text
        , rootVolumeIops = None Natural
        , rootVolumeOptimization = None Bool
        , volumes = None (List VolumeSpec.Type)
        , volumeMounts = None (List VolumeMountSpec.Type)
        , hooks = None (List HookSpec.Union)
        , maxPrice = None Text
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
        }
    }
