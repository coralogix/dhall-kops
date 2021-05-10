let Common = ./Common.dhall

let Openstack =
      { Type =
            Common.Type
          ⩓ { loadbalancer :
                Optional
                  { method : Optional Text
                  , provider : Optional Text
                  , useOctavia : Optional Bool
                  , floatingNetwork : Optional Text
                  , floatingNetworkID : Optional Text
                  , floatingSubnet : Optional Text
                  , subnetID : Optional Text
                  , manageSecurityGroups : Optional Bool
                  }
            , monitor :
                Optional
                  { delay : Optional Text
                  , timeout : Optional Text
                  , maxRetries : Optional Natural
                  }
            , router :
                Optional
                  { externalNetwork : Optional Text
                  , dnsServers : Optional Text
                  , externalSubnet : Optional Text
                  , availabilityZoneHints : Optional (List Text)
                  }
            , blockstorage :
                Optional
                  { bs-version : Optional Text
                  , ignore-volume-az : Optional Bool
                  , override-volume-az : Optional Text
                  , createStorageClass : Optional Bool
                  , csiPluginImage : Optional Text
                  , csiTopologySupport : Optional Bool
                  }
            , insecureSkipVerify : Optional Bool
            , network :
                Optional { availabilityZoneHints : Optional (List Text) }
            }
      , default =
            Common.default
          ∧ { loadbalancer =
                None
                  { method : Optional Text
                  , provider : Optional Text
                  , useOctavia : Optional Bool
                  , floatingNetwork : Optional Text
                  , floatingNetworkID : Optional Text
                  , floatingSubnet : Optional Text
                  , subnetID : Optional Text
                  , manageSecurityGroups : Optional Bool
                  }
            , monitor =
                None
                  { delay : Optional Text
                  , timeout : Optional Text
                  , maxRetries : Optional Natural
                  }
            , router =
                None
                  { externalNetwork : Optional Text
                  , dnsServers : Optional Text
                  , externalSubnet : Optional Text
                  , availabilityZoneHints : Optional (List Text)
                  }
            , blockstorage =
                None
                  { bs-version : Optional Text
                  , ignore-volume-az : Optional Bool
                  , override-volume-az : Optional Text
                  , createStorageClass : Optional Bool
                  , csiPluginImage : Optional Text
                  , csiTopologySupport : Optional Bool
                  }
            , insecureSkipVerify = None Bool
            , network = None { availabilityZoneHints : Optional (List Text) }
            }
      }

let spellcheck = Openstack::{=}

in  Openstack
