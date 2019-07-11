let Openstack = ../../../../types/api/v1alpha2/cloud/Openstack.dhall

in    { loadbalancer =
          None
          { method :
              Optional Text
          , provider :
              Optional Text
          , useOctavia :
              Optional Bool
          , floatingNetwork :
              Optional Text
          , floatingNetworkID :
              Optional Text
          , floatingSubnet :
              Optional Text
          , subnetID :
              Optional Text
          , manageSecurityGroups :
              Optional Bool
          }
      , monitor =
          None
          { delay :
              Optional Text
          , timeout :
              Optional Text
          , maxRetries :
              Optional Natural
          }
      , router =
          None
          { externalNetwork :
              Optional Text
          , dnsServers :
              Optional Text
          , externalSubnet :
              Optional Text
          }
      , blockstorage =
          None
          { bs-version :
              Optional Text
          , ignore-volume-az :
              Optional Bool
          , override-volume-az :
              Optional Text
          }
      }
    : Openstack
