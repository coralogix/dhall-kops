let defaults = ../../../defaults/api/v1alpha2/package.dhall

let Types = ../../../types/api/v1alpha2/package.dhall

let kubernetes = (../../../imports.dhall).kubernetes

in  { accessSpec =
        { dns =
            Types.AccessSpec.DNS (defaults.accessSpec.dns ∧ { dns = {=} })
        , loadBalancer =
            Types.AccessSpec.LoadBalancer
            (   defaults.accessSpec.loadBalancer
              ∧ { loadBalancer =
                    defaults.loadBalancerAccessSpec ∧ { type = "example" }
                }
            )
        }
    , addonSpec =
        defaults.addonSpec ∧ { manifest = "example" } : Types.AddonSpec
    , assets =
        defaults.assets : Types.Assets
    , authenticationSpec =
        { kopeio =
            Types.AuthenticationSpec.Kopeio
            (defaults.authenticationSpec.kopeio ∧ { kopeio = {=} })
        , aws =
            Types.AuthenticationSpec.AWS
            (defaults.authenticationSpec.aws ∧ { aws = {=} })
        }
    , authorizationSpec =
        { alwaysAllow =
            Types.AuthorizationSpec.AlwaysAllow
            (defaults.authorizationSpec.alwaysAllow ∧ { alwaysAllow = {=} })
        , rbac =
            Types.AuthorizationSpec.RBAC
            (defaults.authorizationSpec.rbac ∧ { rbac = {=} })
        }
    , bastionSpec =
        defaults.bastionSpec : Types.BastionSpec
    , channel =
            defaults.channel
          ∧ { metadata =
                kubernetes.meta.v1.objectMeta { name = "example" }
            , spec =
                defaults.channelSpec
            }
        : Types.Channel
    , channelImageSpec =
        defaults.channelImageSpec : Types.ChannelImageSpec
    , channelSpec =
        defaults.channelSpec : Types.ChannelSpec
    , cloud =
        { aws =
            defaults.cloud.aws : Types.Cloud.AWS
        , gce =
            defaults.cloud.gce : Types.Cloud.GCE
        , openstack =
            defaults.cloud.openstack : Types.Cloud.Openstack
        , vsphere =
            defaults.cloud.vSphere : Types.Cloud.VSphere
        }
    , cloudConfiguration =
        { aws =
            Types.CloudConfiguration.AWS defaults.cloudConfiguration.aws
        , gce =
            Types.CloudConfiguration.GCE defaults.cloudConfiguration.gce
        , openstack =
            Types.CloudConfiguration.Openstack
            defaults.cloudConfiguration.openstack
        , vsphere =
            Types.CloudConfiguration.VSphere defaults.cloudConfiguration.vSphere
        }
    , cloudControllerManagerConfig =
          defaults.cloudControllerManagerConfig
        : Types.CloudControllerManagerConfig
    , cluster =
            defaults.cluster
          ∧ { metadata =
                kubernetes.meta.v1.objectMeta { name = "example" }
            , spec =
                Types.ClusterSpec.Union.Open defaults.clusterSpec.open
            }
        : Types.Cluster
    , clusterSpec =
        { open =
            Types.ClusterSpec.Union.Open defaults.clusterSpec.open
        , secured =
            Types.ClusterSpec.Union.Secured
            (   defaults.clusterSpec.secured
              ∧ { authentication =
                    Types.AuthenticationSpec.AWS
                    (defaults.authenticationSpec.aws ∧ { aws = {=} })
                , authorization =
                    Types.AuthorizationSpec.RBAC
                    (defaults.authorizationSpec.rbac ∧ { rbac = {=} })
                }
            )
        }
    , clusterSubnetSpec =
            defaults.clusterSubnetSpec
          ∧ { name =
                "example"
            , cidr =
                "0.0.0.0/0"
            , zone =
                "example"
            , type =
                "example"
            }
        : Types.ClusterSubnetSpec
    , dnsSpec =
        defaults.dnsSpec : Types.DNSSpec
    , dockerConfig =
        defaults.dockerConfig : Types.DockerConfig
    , egressProxySpec =
        defaults.egressProxySpec : Types.EgressProxySpec
    , etcdBackupSpec =
        defaults.etcdBackupSpec : Types.EtcdBackupSpec
    , etcdClusterSpec =
            defaults.etcdClusterSpec
          ∧ { name =
                "example"
            , etcdMembers =
                [   defaults.etcdMemberSpec
                  ∧ { name = "example", instanceGroup = "example" }
                ]
            }
        : Types.EtcdClusterSpec
    , etcdManagerSpec =
        defaults.etcdManagerSpec : Types.EtcdManagerSpec
    , etcdMemberSpec =
            defaults.etcdMemberSpec
          ∧ { name = "example", instanceGroup = "example" }
        : Types.EtcdMemberSpec
    , execContainerAction =
          defaults.execContainerAction ∧ { image = "example" }
        : Types.ExecContainerAction
    , externalDNSConfig =
        defaults.externalDNSConfig : Types.ExternalDNSConfig
    , fileAssetSpec =
            defaults.fileAssetSpec
          ∧ { name = "example", path = "example", content = "example" }
        : Types.FileAssetSpec
    , hookSpec =
        { dockerImage =
            Types.HookSpec.Union.DockerImage
            (   defaults.hookSpec.dockerImage
              ∧ { execContainer =
                    defaults.execContainerAction ∧ { image = "example" }
                }
            )
        , systemdUnit =
            Types.HookSpec.Union.SystemdUnit
            (   defaults.hookSpec.systemdUnit
              ∧ { name = "example", manifest = "example" }
            )
        }
    , httpProxy =
        defaults.httpProxy ∧ { host = "example" } : Types.HTTPProxy
    , iamProfileSpec =
        defaults.iamProfileSpec ∧ { profile = "example" } : Types.IAMProfileSpec
    , iamSpec =
        { empty =
            Types.IAMSpec.Empty
        , strict =
            Types.IAMSpec.Strict defaults.iamSpec.strict
        , permitEcr =
            Types.IAMSpec.PermitECR defaults.iamSpec.permitEcr
        }
    , instanceGroup =
            defaults.instanceGroup
          ∧ { metadata =
                kubernetes.meta.v1.objectMeta { name = "example" }
            , spec =
                  defaults.instanceGroupSpec
                ∧ { role =
                      "example"
                  , image =
                      "example"
                  , minSize =
                      1
                  , maxSize =
                      1
                  , machineType =
                      "example"
                  , subnets =
                      [ "example" ]
                  , zones =
                      [ "example" ]
                  }
            }
        : Types.InstanceGroup
    , instanceGroupSpec =
            defaults.instanceGroupSpec
          ∧ { role =
                "example"
            , image =
                "example"
            , minSize =
                1
            , maxSize =
                1
            , machineType =
                "example"
            , subnets =
                [ "example" ]
            , zones =
                [ "example" ]
            }
        : Types.InstanceGroupSpec
    , kopsVersionSpec =
        defaults.kopsVersionSpec : Types.KopsVersionSpec
    , kubeAPIServerConfig =
        defaults.kubeAPIServerConfig : Types.KubeAPIServerConfig
    , kubeControllerManagerConfig =
        defaults.kubeControllerManagerConfig : Types.KubeControllerManagerConfig
    , kubeDNSConfig =
        defaults.kubeDNSConfig : Types.KubeDNSConfig
    , kubeProxyConfig =
        defaults.kubeProxyConfig : Types.KubeProxyConfig
    , kubeSchedulerConfig =
        defaults.kubeSchedulerConfig : Types.KubeSchedulerConfig
    , kubeletConfigSpec =
        defaults.kubeletConfigSpec : Types.KubeletConfigSpec
    , kubernetesVersionSpec =
        defaults.kubernetesVersionSpec : Types.KubernetesVersionSpec
    , leaderElectionConfiguration =
          defaults.leaderElectionConfiguration ∧ { leaderElect = True }
        : Types.LeaderElectionConfiguration
    , loadBalancer =
        { classic =
            Types.LoadBalancer.Classic
            (defaults.loadBalancer.classic ∧ { loadBalancerName = "example" })
        , targetGroup =
            Types.LoadBalancer.TargetGroup
            (defaults.loadBalancer.targetGroup ∧ { targetGroupARN = "example" })
        }
    , loadBalancerAccessSpec =
          defaults.loadBalancerAccessSpec ∧ { type = "example" }
        : Types.LoadBalancerAccessSpec
    , networking =
        { amazonVPC =
            defaults.networking.amazonVPC : Types.Networking.AmazonVPC
        , calico =
              defaults.networking.calico ∧ { majorVersion = "example" }
            : Types.Networking.Calico
        , canal =
            defaults.networking.canal : Types.Networking.Canal
        , cilium =
            defaults.networking.cilium : Types.Networking.Cilium
        , cni =
            defaults.networking.cni : Types.Networking.CNI
        , flannel =
            defaults.networking.flannel : Types.Networking.Flannel
        , lyftVPC =
            defaults.networking.lyftVPC : Types.Networking.LyftVPC
        , romana =
            defaults.networking.romana : Types.Networking.Romana
        , weave =
            defaults.networking.weave ∧ { mtu = 2048 } : Types.Networking.Weave
        }
    , networkingSpec =
        { amazonVPC =
            Types.NetworkingSpec.AmazonVPC
            (   defaults.networkingSpec.amazonVPC
              ∧ { amazonvpc = defaults.networking.amazonVPC }
            )
        , calico =
            Types.NetworkingSpec.Calico
            (   defaults.networkingSpec.calico
              ∧ { calico =
                    defaults.networking.calico ∧ { majorVersion = "example" }
                }
            )
        , canal =
            Types.NetworkingSpec.Canal
            (   defaults.networkingSpec.canal
              ∧ { canal = defaults.networking.canal }
            )
        , cilium =
            Types.NetworkingSpec.Cilium
            (   defaults.networkingSpec.cilium
              ∧ { cilium = defaults.networking.cilium }
            )
        , classic =
            Types.NetworkingSpec.Classic
            (defaults.networkingSpec.classic ∧ { classic = {=} })
        , cni =
            Types.NetworkingSpec.CNI
            (defaults.networkingSpec.cni ∧ { cni = defaults.networking.cni })
        , external =
            Types.NetworkingSpec.External
            (defaults.networkingSpec.external ∧ { external = {=} })
        , flannel =
            Types.NetworkingSpec.Flannel
            (   defaults.networkingSpec.flannel
              ∧ { flannel = defaults.networking.flannel }
            )
        , kopeio =
            Types.NetworkingSpec.Kopeio
            (defaults.networkingSpec.kopeio ∧ { kopeio = {=} })
        , kubenet =
            Types.NetworkingSpec.Kubenet
            (defaults.networkingSpec.kubenet ∧ { kubenet = {=} })
        , kuberouter =
            Types.NetworkingSpec.Kuberouter
            (defaults.networkingSpec.kuberouter ∧ { kuberouter = {=} })
        , lyftVPC =
            Types.NetworkingSpec.LyftVPC
            (   defaults.networkingSpec.lyftVPC
              ∧ { lyftvpc = defaults.networking.lyftVPC }
            )
        , romana =
            Types.NetworkingSpec.Romana
            (   defaults.networkingSpec.romana
              ∧ { romana = defaults.networking.romana }
            )
        , weave =
            Types.NetworkingSpec.Weave
            (   defaults.networkingSpec.weave
              ∧ { weave = defaults.networking.weave ∧ { mtu = 2048 } }
            )
        }
    , nodeAuthorizationSpec =
            defaults.nodeAuthorizationSpec
          ∧ { nodeAuthorizer = defaults.nodeAuthorizerSpec }
        : Types.NodeAuthorizationSpec
    , nodeAuthorizerSpec =
        defaults.nodeAuthorizerSpec : Types.NodeAuthorizerSpec
    , targetSpec =
          defaults.targetSpec ∧ { terraform = defaults.terraformSpec }
        : Types.TargetSpec
    , terraformSpec =
        defaults.terraformSpec : Types.TerraformSpec
    , topologySpec =
        defaults.topologySpec : Types.TopologySpec
    , userData =
            defaults.userData
          ∧ { name = "example", type = "example", content = "example" }
        : Types.UserData
    , volumeMountSpec =
            defaults.volumeMountSpec
          ∧ { device = "example", filesystem = "example", path = "example" }
        : Types.VolumeMountSpec
    , volumeSpec =
            defaults.volumeSpec
          ∧ { device =
                "example"
            , encrypted =
                True
            , size =
                20
            , type =
                "example"
            }
        : Types.VolumeSpec
    }
