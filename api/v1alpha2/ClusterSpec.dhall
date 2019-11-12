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

in  { Type =
        { channel : Optional Text
        , addons : Optional (List AddonSpec.Type)
        , configBase : Optional Text
        , cloudProvider : Optional Text
        , kubernetesVersion : Optional Text
        , subnets : Optional (List ClusterSubnetSpec.Type)
        , project : Optional Text
        , masterPublicName : Optional Text
        , masterInternalName : Optional Text
        , networkCIDR : Optional Text
        , additionalNetworkCIDRs : Optional (List Text)
        , networkID : Optional Text
        , topology : Optional TopologySpec.Type
        , secretStore : Optional Text
        , keyStore : Optional Text
        , configStore : Optional Text
        , dnsZone : Optional Text
        , additionalSans : Optional (List Text)
        , clusterDNSDomain : Optional Text
        , serviceClusterIPRange : Optional Text
        , nonMasqueradeCIDR : Optional Text
        , sshAccess : Optional (List Text)
        , nodePortAccess : Optional (List Text)
        , egressProxy : Optional EgressProxySpec.Type
        , sshKeyName : Optional Text
        , kubernetesApiAccess : Optional (List Text)
        , isolateMasters : Optional Bool
        , updatePolicy : Optional Text
        , additionalPolicies :
            Optional (List { mapKey : Text, mapValue : Text })
        , fileAssets : Optional (List FileAssetSpec.Type)
        , etcdClusters : Optional (List EtcdClusterSpec.Type)
        , docker : Optional DockerConfig.Type
        , kubeDNS : Optional KubeDNSConfig.Type
        , kubeAPIServer : Optional KubeAPIServerConfig.Type
        , kubeControllerManager : Optional KubeControllerManagerConfig.Type
        , cloudControllerManager : Optional CloudControllerManagerConfig.Type
        , kubeScheduler : Optional KubeSchedulerConfig.Type
        , kubeProxy : Optional KubeProxyConfig.Type
        , kubelet : Optional KubeletConfigSpec.Type
        , masterKubelet : Optional KubeletConfigSpec.Type
        , cloudConfig : Optional CloudConfiguration
        , externalDns : Optional ExternalDNSConfig.Type
        , networking : Optional NetworkingSpec
        , api : Optional AccessSpec
        , nodeAuthorization : Optional NodeAuthorizationSpec.Type
        , cloudLabels : Optional (List { mapKey : Text, mapValue : Text })
        , hooks : Optional (List HookSpec.Union)
        , assets : Optional Assets.Type
        , iam : Optional IAMSpec
        , encryptionConfig : Optional Bool
        , disableSubnetTags : Optional Bool
        , target : Optional TargetSpec.Type
        , authentication : Optional AuthenticationSpec
        , authorization : Optional AuthorizationSpec
        }
    , default =
        { channel = None Text
        , addons = None (List AddonSpec.Type)
        , configBase = None Text
        , cloudProvider = None Text
        , kubernetesVersion = None Text
        , subnets = None (List ClusterSubnetSpec.Type)
        , project = None Text
        , masterPublicName = None Text
        , masterInternalName = None Text
        , networkCIDR = None Text
        , additionalNetworkCIDRs = None (List Text)
        , networkID = None Text
        , topology = None TopologySpec.Type
        , secretStore = None Text
        , keyStore = None Text
        , configStore = None Text
        , dnsZone = None Text
        , additionalSans = None (List Text)
        , clusterDNSDomain = None Text
        , serviceClusterIPRange = None Text
        , nonMasqueradeCIDR = None Text
        , sshAccess = None (List Text)
        , nodePortAccess = None (List Text)
        , egressProxy = None EgressProxySpec.Type
        , sshKeyName = None Text
        , kubernetesApiAccess = None (List Text)
        , isolateMasters = None Bool
        , updatePolicy = None Text
        , additionalPolicies = None (List { mapKey : Text, mapValue : Text })
        , fileAssets = None (List FileAssetSpec.Type)
        , etcdClusters = None (List EtcdClusterSpec.Type)
        , docker = None DockerConfig.Type
        , kubeDNS = None KubeDNSConfig.Type
        , kubeAPIServer = None KubeAPIServerConfig.Type
        , kubeControllerManager = None KubeControllerManagerConfig.Type
        , cloudControllerManager = None CloudControllerManagerConfig.Type
        , kubeScheduler = None KubeSchedulerConfig.Type
        , kubeProxy = None KubeProxyConfig.Type
        , kubelet = None KubeletConfigSpec.Type
        , masterKubelet = None KubeletConfigSpec.Type
        , cloudConfig = None CloudConfiguration
        , externalDns = None ExternalDNSConfig.Type
        , networking = None NetworkingSpec
        , api = None AccessSpec
        , nodeAuthorization = None NodeAuthorizationSpec.Type
        , cloudLabels = None (List { mapKey : Text, mapValue : Text })
        , hooks = None (List HookSpec.Union)
        , assets = None Assets.Type
        , iam = None IAMSpec
        , encryptionConfig = None Bool
        , disableSubnetTags = None Bool
        , target = None TargetSpec.Type
        , authentication = None AuthenticationSpec
        , authorization = None AuthorizationSpec
        }
    }
