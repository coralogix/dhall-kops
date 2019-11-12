{ Type =
    { loadbalancer :
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
          }
    , blockstorage :
        Optional
          { bs-version : Optional Text
          , ignore-volume-az : Optional Bool
          , override-volume-az : Optional Text
          }
    }
, default =
    { loadbalancer =
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
          }
    , blockstorage =
        None
          { bs-version : Optional Text
          , ignore-volume-az : Optional Bool
          , override-volume-az : Optional Text
          }
    }
}
