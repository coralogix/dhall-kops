{ Type =
    { type : Text
    , idleTimeoutSeconds : Optional Natural
    , securityGroupOverride : Optional Text
    , additionalSecurityGroups : Optional (List Text)
    , useForInternalApi : Optional Bool
    , sslCertificate : Optional Text
    , crossZoneLoadBalancing : Optional Bool
    }
, default =
    { idleTimeoutSeconds = None Natural
    , securityGroupOverride = None Text
    , additionalSecurityGroups = None (List Text)
    , useForInternalApi = None Bool
    , sslCertificate = None Text
    , crossZoneLoadBalancing = None Bool
    }
}
