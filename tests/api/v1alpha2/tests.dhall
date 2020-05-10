let Kops = ../../../api/v1alpha2/package.dhall

in  { accessSpec =
      { dns = Kops.AccessSpec.DNS { dns = {=} }
      , loadBalancer =
          Kops.AccessSpec.LoadBalancer
            { loadBalancer = Kops.LoadBalancerAccessSpec::{ type = "example" } }
      }
    , addonSpec = Kops.AddonSpec::{ manifest = "example" }
    , assets = Kops.Assets::{=}
    , authenticationSpec =
      { kopeio = Kops.AuthenticationSpec.Kopeio { kopeio = {=} }
      , aws = Kops.AuthenticationSpec.AWS { aws = {=} }
      }
    , authorizationSpec =
      { alwaysAllow = Kops.AuthorizationSpec.AlwaysAllow { alwaysAllow = {=} }
      , rbac = Kops.AuthorizationSpec.RBAC { rbac = {=} }
      }
    , bastionSpec = Kops.BastionSpec::{=}
    , channel = Kops.Channel::{
      , metadata = Kops.Metadata::{ name = "example" }
      , spec = Kops.ChannelSpec::{=}
      }
    , channelImageSpec = Kops.ChannelImageSpec::{=}
    , channelSpec = Kops.ChannelSpec::{=}
    , cloud =
      { aws = Kops.Cloud.AWS::{=}
      , gce = Kops.Cloud.GCE::{=}
      , openstack = Kops.Cloud.Openstack::{=}
      , vsphere = Kops.Cloud.VSphere::{=}
      }
    , cloudConfiguration =
      { aws = Kops.CloudConfiguration.AWS Kops.Cloud.AWS::{=}
      , gce = Kops.CloudConfiguration.GCE Kops.Cloud.GCE::{=}
      , openstack =
          Kops.CloudConfiguration.Openstack
            { openstack = Kops.Cloud.Openstack::{=} }
      , vsphere = Kops.CloudConfiguration.VSphere Kops.Cloud.VSphere::{=}
      }
    , cloudControllerManagerConfig = Kops.CloudControllerManagerConfig::{=}
    , cluster = Kops.Cluster::{
      , metadata = Kops.Metadata::{ name = "example" }
      , spec = Kops.ClusterSpec::{=}
      }
    , clusterSpec = Kops.ClusterSpec::{=}
    , clusterSubnetSpec = Kops.ClusterSubnetSpec::{
      , name = "example"
      , cidr = "0.0.0.0/0"
      , zone = "example"
      , type = "example"
      }
    , dnsSpec = Kops.DNSSpec::{=}
    , dockerConfig = Kops.DockerConfig::{=}
    , egressProxySpec = Kops.EgressProxySpec::{=}
    , etcdBackupSpec = Kops.EtcdBackupSpec::{=}
    , etcdClusterSpec = Kops.EtcdClusterSpec::{
      , name = "example"
      , enableEtcdTLS = Some True
      , etcdMembers =
        [ Kops.EtcdMemberSpec::{ name = "example", instanceGroup = "example" } ]
      }
    , etcdManagerSpec = Kops.EtcdManagerSpec::{=}
    , etcdMemberSpec = Kops.EtcdMemberSpec::{
      , name = "example"
      , instanceGroup = "example"
      }
    , execContainerAction = Kops.ExecContainerAction::{ image = "example" }
    , externalDNSConfig = Kops.ExternalDNSConfig::{=}
    , fileAssetSpec = Kops.FileAssetSpec::{
      , name = "example"
      , path = "example"
      , content = "example"
      }
    , hookSpec =
      { dockerImage =
          Kops.HookSpec.Union.DockerImage
            Kops.HookSpec.DockerImage::{
            , execContainer = Kops.ExecContainerAction::{ image = "example" }
            }
      , systemdUnit =
          Kops.HookSpec.Union.SystemdUnit
            Kops.HookSpec.SystemdUnit::{
            , name = "example"
            , manifest = "example"
            }
      }
    , httpProxy = Kops.HTTPProxy::{ host = "example" }
    , iamProfileSpec = Kops.IAMProfileSpec::{ profile = "example" }
    , iamSpec =
      { empty = Kops.IAMSpec.Empty
      , strict = Kops.IAMSpec.Strict { legacy = False }
      , permitEcr =
          Kops.IAMSpec.PermitECR
            { legacy = False, allowContainerRegistry = True }
      }
    , instanceGroup = Kops.InstanceGroup::{
      , metadata = Kops.Metadata::{ name = "example" }
      , spec = Kops.InstanceGroupSpec::{
        , role = "example"
        , image = "example"
        , minSize = 1
        , maxSize = 1
        , machineType = "example"
        , subnets = [ "example" ]
        }
      }
    , instanceGroupSpec = Kops.InstanceGroupSpec::{
      , role = "example"
      , image = "example"
      , minSize = 1
      , maxSize = 1
      , machineType = "example"
      , subnets = [ "example" ]
      }
    , kopsVersionSpec = Kops.KopsVersionSpec::{=}
    , kubeAPIServerConfig = Kops.KubeAPIServerConfig::{=}
    , kubeControllerManagerConfig = Kops.KubeControllerManagerConfig::{=}
    , kubeDNSConfig = Kops.KubeDNSConfig::{=}
    , kubeProxyConfig = Kops.KubeProxyConfig::{=}
    , kubeSchedulerConfig = Kops.KubeSchedulerConfig::{=}
    , kubeletConfigSpec = Kops.KubeletConfigSpec::{=}
    , kubernetesVersionSpec = Kops.KubernetesVersionSpec::{=}
    , leaderElectionConfiguration = Kops.LeaderElectionConfiguration::{
      , leaderElect = True
      }
    , loadBalancer =
      { classic = Kops.LoadBalancer.Classic { loadBalancerName = "example" }
      , targetGroup =
          Kops.LoadBalancer.TargetGroup { targetGroupArn = "example" }
      }
    , loadBalancerAccessSpec = Kops.LoadBalancerAccessSpec::{ type = "example" }
    , mixedInstancesPolicySpec = Kops.MixedInstancesPolicySpec::{=}
    , networking =
      { amazonVPC = Kops.Networking.AmazonVPC::{=}
      , calico = Kops.Networking.Calico::{ majorVersion = "example" }
      , canal = Kops.Networking.Canal::{=}
      , cilium = Kops.Networking.Cilium::{=}
      , cni = Kops.Networking.CNI::{=}
      , flannel = Kops.Networking.Flannel::{=}
      , lyftVPC = Kops.Networking.LyftVPC::{=}
      , romana = Kops.Networking.Romana::{=}
      , weave = Kops.Networking.Weave::{ mtu = 2048 }
      }
    , networkingSpec =
      { amazonVPC =
        { default =
            Kops.NetworkingSpec.AmazonVPC
              { amazonvpc = Kops.Networking.AmazonVPC::{=} }
        , with-env =
            Kops.NetworkingSpec.AmazonVPC
              { amazonvpc = Kops.Networking.AmazonVPC::{
                , env = Some
                  [ { name = "WARM_IP_TARGET", value = "10" }
                  , { name = "AWS_VPC_K8S_CNI_LOGLEVEL", value = "debug" }
                  ]
                }
              }
        }
      , calico =
          Kops.NetworkingSpec.Calico
            { calico = Kops.Networking.Calico::{ majorVersion = "example" } }
      , canal = Kops.NetworkingSpec.Canal { canal = Kops.Networking.Canal::{=} }
      , cilium =
          Kops.NetworkingSpec.Cilium { cilium = Kops.Networking.Cilium::{=} }
      , classic = Kops.NetworkingSpec.Classic { classic = {=} }
      , cni = Kops.NetworkingSpec.CNI { cni = Kops.Networking.CNI::{=} }
      , external = Kops.NetworkingSpec.External { external = {=} }
      , flannel =
          Kops.NetworkingSpec.Flannel { flannel = Kops.Networking.Flannel::{=} }
      , kopeio = Kops.NetworkingSpec.Kopeio { kopeio = {=} }
      , kubenet = Kops.NetworkingSpec.Kubenet { kubenet = {=} }
      , kuberouter = Kops.NetworkingSpec.Kuberouter { kuberouter = {=} }
      , lyftVPC =
          Kops.NetworkingSpec.LyftVPC { lyftvpc = Kops.Networking.LyftVPC::{=} }
      , romana =
          Kops.NetworkingSpec.Romana { romana = Kops.Networking.Romana::{=} }
      , weave =
          Kops.NetworkingSpec.Weave
            { weave = Kops.Networking.Weave::{ mtu = 2048 } }
      }
    , nodeAuthorizationSpec = Kops.NodeAuthorizationSpec::{
      , nodeAuthorizer = Kops.NodeAuthorizerSpec::{=}
      }
    , nodeAuthorizerSpec = Kops.NodeAuthorizerSpec::{=}
    , targetSpec = Kops.TargetSpec::{ terraform = Kops.TerraformSpec::{=} }
    , terraformSpec = Kops.TerraformSpec::{=}
    , topologySpec = Kops.TopologySpec::{=}
    , userData = Kops.UserData::{
      , name = "example"
      , type = "example"
      , content = "example"
      }
    , volumeMountSpec = Kops.VolumeMountSpec::{
      , device = "example"
      , filesystem = "example"
      , path = "example"
      }
    , volumeSpec = Kops.VolumeSpec::{
      , device = "example"
      , encrypted = True
      , size = 20
      , type = "example"
      }
    }
