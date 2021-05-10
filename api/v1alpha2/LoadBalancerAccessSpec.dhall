let LoadBalancerSubnetSpec = ./LoadBalancerSubnetSpec.dhall

let LoadBalancerAccessSpec =
      { Type =
          { class : Optional Text
          , type : Optional Text
          , idleTimeoutSeconds : Optional Natural
          , securityGroupOverride : Optional Text
          , additionalSecurityGroups : Optional (List Text)
          , useForInternalApi : Optional Bool
          , sslCertificate : Optional Text
          , sslPolicy : Optional Text
          , crossZoneLoadBalancing : Optional Bool
          , subnets : Optional (List LoadBalancerSubnetSpec.Type)
          }
      , default =
        { class = None Text
        , type = None Text
        , idleTimeoutSeconds = None Natural
        , securityGroupOverride = None Text
        , additionalSecurityGroups = None (List Text)
        , useForInternalApi = None Bool
        , sslCertificate = None Text
        , sslPolicy = None Text
        , crossZoneLoadBalancing = None Bool
        , subnets = None (List LoadBalancerSubnetSpec.Type)
        }
      }

let spellcheck = LoadBalancerAccessSpec::{=}

in  LoadBalancerAccessSpec
