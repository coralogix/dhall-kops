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

let GossipConfig = ./GossipConfig.dhall

let DNSControllerGossipConfig = ./DNSControllerGossipConfig.dhall

let ExternalPolicies = ./ExternalPolicies.dhall

let ContainerdConfig = ./ContainerdConfig.dhall

let NodeTerminationHandlerConfig = ./NodeTerminationHandlerConfig.dhall

let MetricsServerConfig = ./MetricsServerConfig.dhall

let CertManagerConfig = ./CertManagerConfig.dhall

let RollingUpdate = ./RollingUpdate.dhall

let ClusterAutoscalerConfig = ./ClusterAutoscalerConfig.dhall

let ClusterSpec =
      { Type =
          { channel : Optional Text
          , addons : Optional (List AddonSpec.Type)
          , configBase : Optional Text
          , cloudProvider : Optional Text
          , gossipConfig : Optional GossipConfig.Type
          , containerRuntime : Optional Text
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
          , dnsControllerGossipConfig : Optional DNSControllerGossipConfig.Type
          , additionalSans : Optional (List Text)
          , clusterDNSDomain : Optional Text
          , serviceClusterIPRange : Optional Text
          , podCIDR : Optional Text
          , nonMasqueradeCIDR : Optional Text
          , sshAccess : Optional (List Text)
          , nodePortAccess : Optional (List Text)
          , egressProxy : Optional EgressProxySpec.Type
          , sshKeyName : Optional Text
          , kubernetesApiAccess : Optional (List Text)
          , isolateMasters : Optional Bool
          , updatePolicy : Optional Text
          , externalPolicies : Optional ExternalPolicies.Type
          , additionalPolicies :
              Optional (List { mapKey : Text, mapValue : Text })
          , fileAssets : Optional (List FileAssetSpec.Type)
          , etcdClusters : Optional (List EtcdClusterSpec.Type)
          , containerd : Optional ContainerdConfig.Type
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
          , nodeTerminationHandler : Optional NodeTerminationHandlerConfig.Type
          , metricsServer : Optional MetricsServerConfig.Type
          , certManager : Optional CertManagerConfig.Type
          , networking : Optional NetworkingSpec
          , api : Optional AccessSpec
          , authentication : Optional AuthenticationSpec
          , authorization : Optional AuthorizationSpec
          , nodeAuthorization : Optional NodeAuthorizationSpec.Type
          , cloudLabels : Optional (List { mapKey : Text, mapValue : Text })
          , hooks : Optional (List HookSpec.Union)
          , assets : Optional Assets.Type
          , iam : Optional IAMSpec.Type
          , encryptionConfig : Optional Bool
          , disableSubnetTags : Optional Bool
          , target : Optional TargetSpec.Type
          , useHostCertifications : Optional Bool
          , sysctlParameters : Optional (List Text)
          , rollingUpdate : Optional RollingUpdate.Type
          , clusterAutoscaler : Optional ClusterAutoscalerConfig.Type
          }
      , default =
        { channel = None Text
        , addons = None (List AddonSpec.Type)
        , configBase = None Text
        , cloudProvider = None Text
        , gossipConfig = None GossipConfig.Type
        , containerRuntime = None Text
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
        , dnsControllerGossipConfig = None DNSControllerGossipConfig.Type
        , additionalSans = None (List Text)
        , clusterDNSDomain = None Text
        , serviceClusterIPRange = None Text
        , podCIDR = None Text
        , nonMasqueradeCIDR = None Text
        , sshAccess = None (List Text)
        , nodePortAccess = None (List Text)
        , egressProxy = None EgressProxySpec.Type
        , sshKeyName = None Text
        , kubernetesApiAccess = None (List Text)
        , isolateMasters = None Bool
        , updatePolicy = None Text
        , externalPolicies = None ExternalPolicies.Type
        , additionalPolicies = None (List { mapKey : Text, mapValue : Text })
        , fileAssets = None (List FileAssetSpec.Type)
        , etcdClusters = None (List EtcdClusterSpec.Type)
        , containerd = None ContainerdConfig.Type
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
        , nodeTerminationHandler = None NodeTerminationHandlerConfig.Type
        , metricsServer = None MetricsServerConfig.Type
        , certManager = None CertManagerConfig.Type
        , networking = None NetworkingSpec
        , api = None AccessSpec
        , authentication = None AuthenticationSpec
        , authorization = None AuthorizationSpec
        , nodeAuthorization = None NodeAuthorizationSpec.Type
        , cloudLabels = None (List { mapKey : Text, mapValue : Text })
        , hooks = None (List HookSpec.Union)
        , assets = None Assets.Type
        , iam = None IAMSpec.Type
        , encryptionConfig = None Bool
        , disableSubnetTags = None Bool
        , target = None TargetSpec.Type
        , useHostCertifications = None Bool
        , sysctlParameters = None (List Text)
        , rollingUpdate = None RollingUpdate.Type
        , clusterAutoscaler = None ClusterAutoscalerConfig.Type
        }
      }

let spellcheck = ClusterSpec::{=}

in  ClusterSpec
