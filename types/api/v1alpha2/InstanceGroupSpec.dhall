let UserData = ./UserData.dhall : Type

let LoadBalancer = ./LoadBalancer.dhall : Type

let VolumeSpec = ./VolumeSpec.dhall : Type

let VolumeMountSpec = ./VolumeMountSpec.dhall : Type

let HookSpec = ./HookSpec.dhall

let FileAssetSpec = ./FileAssetSpec.dhall : Type

let KubeletConfigSpec = ./KubeletConfigSpec.dhall : Type

let IAMProfileSpec = ./IAMProfileSpec.dhall : Type

in    { role :
          Text
      , image :
          Text
      , minSize :
          Natural
      , maxSize :
          Natural
      , machineType :
          Text
      , rootVolumeSize :
          Optional Natural
      , rootVolumeType :
          Optional Text
      , rootVolumeIops :
          Optional Natural
      , rootVolumeOptimization :
          Optional Bool
      , volumes :
          Optional (List VolumeSpec)
      , volumeMounts :
          Optional (List VolumeMountSpec)
      , subnets :
          List Text
      , zones :
          List Text
      , hooks :
          Optional (List HookSpec.Union)
      , maxPrice :
          Optional Text
      , associatePublicIp :
          Optional Bool
      , additionalSecurityGroups :
          Optional (List Text)
      , cloudLabels :
          Optional (List { mapKey : Text, mapValue : Text })
      , nodeLabels :
          Optional (List { mapKey : Text, mapValue : Text })
      , fileAssets :
          Optional (List FileAssetSpec)
      , tenancy :
          Optional Text
      , kubelet :
          Optional KubeletConfigSpec
      , taints :
          Optional (List Text)
      , additionalUserData :
          Optional (List UserData)
      , suspendProcesses :
          Optional (List Text)
      , externalLoadBalancers :
          Optional (List LoadBalancer)
      , detailedInstanceMonitoring :
          Optional Bool
      , iam :
          Optional IAMProfileSpec
      , securityGroupOverride :
          Optional Text
      }
    : Type
