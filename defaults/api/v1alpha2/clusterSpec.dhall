let AddonSpec = ../../../types/api/v1alpha2/AddonSpec.dhall : Type

let ClusterSubnetSpec =
      ../../../types/api/v1alpha2/ClusterSubnetSpec.dhall : Type

let TopologySpec = ../../../types/api/v1alpha2/TopologySpec.dhall : Type

let EgressProxySpec = ../../../types/api/v1alpha2/EgressProxySpec.dhall : Type

let FileAssetSpec = ../../../types/api/v1alpha2/FileAssetSpec.dhall : Type

let EtcdClusterSpec = ../../../types/api/v1alpha2/EtcdClusterSpec.dhall : Type

let DockerConfig = ../../../types/api/v1alpha2/DockerConfig.dhall : Type

let KubeDNSConfig = ../../../types/api/v1alpha2/KubeDNSConfig.dhall : Type

let KubeAPIServerConfig =
      ../../../types/api/v1alpha2/KubeAPIServerConfig.dhall : Type

let KubeControllerManagerConfig =
      ../../../types/api/v1alpha2/KubeControllerManagerConfig.dhall : Type

let CloudControllerManagerConfig =
      ../../../types/api/v1alpha2/CloudControllerManagerConfig.dhall : Type

let KubeSchedulerConfig =
      ../../../types/api/v1alpha2/KubeSchedulerConfig.dhall : Type

let KubeProxyConfig = ../../../types/api/v1alpha2/KubeProxyConfig.dhall : Type

let KubeletConfigSpec =
      ../../../types/api/v1alpha2/KubeletConfigSpec.dhall : Type

let CloudConfiguration =
      ../../../types/api/v1alpha2/CloudConfiguration.dhall : Type

let ExternalDNSConfig =
      ../../../types/api/v1alpha2/ExternalDNSConfig.dhall : Type

let NetworkingSpec = ../../../types/api/v1alpha2/NetworkingSpec.dhall : Type

let AccessSpec = ../../../types/api/v1alpha2/AccessSpec.dhall : Type

let AuthenticationSpec =
      ../../../types/api/v1alpha2/AuthenticationSpec.dhall : Type

let AuthorizationSpec =
      ../../../types/api/v1alpha2/AuthorizationSpec.dhall : Type

let NodeAuthorizationSpec =
      ../../../types/api/v1alpha2/NodeAuthorizationSpec.dhall : Type

let HookSpec = ../../../types/api/v1alpha2/HookSpec.dhall

let Assets = ../../../types/api/v1alpha2/Assets.dhall : Type

let IAMSpec = ../../../types/api/v1alpha2/IAMSpec.dhall : Type

let TargetSpec = ../../../types/api/v1alpha2/TargetSpec.dhall : Type

let ClusterSpec = ../../../types/api/v1alpha2/ClusterSpec.dhall

let open =
        { channel =
            None Text
        , addons =
            None (List AddonSpec)
        , configBase =
            None Text
        , cloudProvider =
            None Text
        , kubernetesVersion =
            None Text
        , subnets =
            None (List ClusterSubnetSpec)
        , project =
            None Text
        , masterPublicName =
            None Text
        , masterInternalName =
            None Text
        , networkCIDR =
            None Text
        , additionalNetworkCIDRs =
            None (List Text)
        , networkID =
            None Text
        , topology =
            None TopologySpec
        , secretStore =
            None Text
        , keyStore =
            None Text
        , configStore =
            None Text
        , dnsZone =
            None Text
        , additionalSans =
            None (List Text)
        , clusterDNSDomain =
            None Text
        , serviceClusterIPRange =
            None Text
        , nonMasqueradeCIDR =
            None Text
        , sshAccess =
            None (List Text)
        , nodePortAccess =
            None (List Text)
        , egressProxy =
            None EgressProxySpec
        , sshKeyName =
            None Text
        , kubernetesApiAccess =
            None (List Text)
        , isolateMasters =
            None Bool
        , updatePolicy =
            None Text
        , additionalPolicies =
            None (List { mapKey : Text, mapValue : Text })
        , fileAssets =
            None (List FileAssetSpec)
        , etcdClusters =
            None (List EtcdClusterSpec)
        , docker =
            None DockerConfig
        , kubeDNS =
            None KubeDNSConfig
        , kubeAPIServer =
            None KubeAPIServerConfig
        , kubeControllerManager =
            None KubeControllerManagerConfig
        , cloudControllerManager =
            None CloudControllerManagerConfig
        , kubeScheduler =
            None KubeSchedulerConfig
        , kubeProxy =
            None KubeProxyConfig
        , kubelet =
            None KubeletConfigSpec
        , masterKubelet =
            None KubeletConfigSpec
        , cloudConfig =
            None CloudConfiguration
        , externalDns =
            None ExternalDNSConfig
        , networking =
            None NetworkingSpec
        , api =
            None AccessSpec
        , nodeAuthorization =
            None NodeAuthorizationSpec
        , cloudLabels =
            None (List { mapKey : Text, mapValue : Text })
        , hooks =
            None (List HookSpec.Union)
        , assets =
            None Assets
        , iam =
            None IAMSpec
        , encryptionConfig =
            None Bool
        , disableSubnetTags =
            None Bool
        , target =
            None TargetSpec
        }
      : ClusterSpec.Open

let secured = open

in  { open = open, secured = secured }
