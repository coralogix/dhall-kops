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
        }
      }

let spellcheck = LoadBalancerAccessSpec::{=}

in  LoadBalancerAccessSpec
