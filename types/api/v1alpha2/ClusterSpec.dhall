let AddonSpec = ./AddonSpec.dhall

let ClusterSubnetSpec = ./ClusterSubnetSpec.dhall

let TopologySpec = ./TopologySpec.dhall

let EgressProxySpec = ./EgressProxySpec.dhall

let FileAssetSpec = ./FileAssetSpec.dhall

let EtcdClusterSpec = ./EtcdClusterSpec.dhall

let DockerConfig = ./DockerConfig.dhall

let KubeDNSConfig = ./KubeDNSConfig.dhall

let KubeAPIServerConfig = ./KubeAPIServerConfig.dhall

let KubeControllerManagerConfig = ./KubeControllerManagerConfig.dhall

let CloudControllerManagerConfig = ./CloudControllerManagerConfig.dhall

let KubeSchedulerConfig = ./KubeSchedulerConfig.dhall

let KubeProxyConfig = ./KubeProxyConfig.dhall

let KubeletConfigSpec = ./KubeletConfigSpec.dhall

let CloudConfiguration = ./CloudConfiguration.dhall

let ExternalDNSConfig = ./ExternalDNSConfig.dhall

let NetworkingSpec = ./NetworkingSpec.dhall

let AccessSpec = ./AccessSpec.dhall

let AuthenticationSpec = ./AuthenticationSpec.dhall

let AuthorizationSpec = ./AuthorizationSpec.dhall

let NodeAuthorizationSpec = ./NodeAuthorizationSpec.dhall

let HookSpec = ./HookSpec.dhall

let Assets = ./Assets.dhall

let IAMSpec = ./IAMSpec.dhall

let TargetSpec = ./TargetSpec.dhall

in  { channel :
        Optional Text
    , addons :
        Optional (List AddonSpec)
    , configBase :
        Optional Text
    , cloudProvider :
        Optional Text
    , kubernetesVersion :
        Optional Text
    , subnets :
        Optional (List ClusterSubnetSpec)
    , project :
        Optional Text
    , masterPublicName :
        Optional Text
    , masterInternalName :
        Optional Text
    , networkCIDR :
        Optional Text
    , additionalNetworkCIDRs :
        Optional (List Text)
    , networkID :
        Optional Text
    , topology :
        Optional TopologySpec
    , secretStore :
        Optional Text
    , keyStore :
        Optional Text
    , configStore :
        Optional Text
    , dnsZone :
        Optional Text
    , additionalSans :
        Optional (List Text)
    , clusterDNSDomain :
        Optional Text
    , serviceClusterIPRange :
        Optional Text
    , nonMasqueradeCIDR :
        Optional Text
    , sshAccess :
        Optional (List Text)
    , nodePortAccess :
        Optional (List Text)
    , egressProxy :
        Optional EgressProxySpec
    , sshKeyName :
        Optional Text
    , kubernetesApiAccess :
        Optional (List Text)
    , isolateMasters :
        Optional Bool
    , updatePolicy :
        Optional Text
    , additionalPolicies :
        Optional (List { mapKey : Text, mapValue : Text })
    , fileAssets :
        Optional (List FileAssetSpec)
    , etcdClusters :
        Optional (List EtcdClusterSpec)
    , docker :
        Optional DockerConfig
    , kubeDNS :
        Optional KubeDNSConfig
    , kubeAPIServer :
        Optional KubeAPIServerConfig
    , kubeControllerManager :
        Optional KubeControllerManagerConfig
    , cloudControllerManager :
        Optional CloudControllerManagerConfig
    , kubeScheduler :
        Optional KubeSchedulerConfig
    , kubeProxy :
        Optional KubeProxyConfig
    , kubelet :
        Optional KubeletConfigSpec
    , masterKubelet :
        Optional KubeletConfigSpec
    , cloudConfig :
        Optional CloudConfiguration
    , externalDns :
        Optional ExternalDNSConfig
    , networking :
        Optional NetworkingSpec
    , api :
        Optional AccessSpec
    , nodeAuthorization :
        Optional NodeAuthorizationSpec
    , cloudLabels :
        Optional (List { mapKey : Text, mapValue : Text })
    , hooks :
        Optional (List HookSpec.Union)
    , assets :
        Optional Assets
    , iam :
        Optional IAMSpec
    , encryptionConfig :
        Optional Bool
    , disableSubnetTags :
        Optional Bool
    , target :
        Optional TargetSpec
    , authentication :
        Optional AuthenticationSpec
    , authorization :
        Optional AuthorizationSpec
    }
