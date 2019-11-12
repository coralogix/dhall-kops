{ Type =
    { image : Optional Text
    , disableBasicAuth : Optional Bool
    , logLevel : Optional Natural
    , cloudProvider : Optional Text
    , securePort : Optional Natural
    , insecurePort : Optional Natural
    , address : Optional Text
    , bindAddress : Optional Text
    , insecureBindAddress : Optional Text
    , enableBootstrapTokenAuth : Optional Bool
    , enableAggregatorRouting : Optional Bool
    , admissionControl : Optional (List Text)
    , enableAdmissionPlugins : Optional (List Text)
    , disableAdmissionPlugins : Optional (List Text)
    , serviceClusterIPRange : Optional Text
    , serviceNodePortRange : Optional Text
    , etcdServers : Optional (List Text)
    , etcdServersOverrides : Optional (List Text)
    , etcdCaFile : Optional Text
    , etcdCertFile : Optional Text
    , etcdKeyFile : Optional Text
    , basicAuthFile : Optional Text
    , clientCAFile : Optional Text
    , tlsCertFile : Optional Text
    , tlsPrivateKeyFile : Optional Text
    , tokenAuthFile : Optional Text
    , allowPrivileged : Optional Bool
    , apiServerCount : Optional Natural
    , runtimeConfig : Optional (List { mapKey : Text, mapValue : Text })
    , kubeletClientCertificate : Optional Text
    , kubeletClientKey : Optional Text
    , anonymousAuth : Optional Bool
    , kubeletPreferredAddressTypes : Optional (List Text)
    , storageBackend : Optional Text
    , oidcUsernameClaim : Optional Text
    , oidcUsernamePrefix : Optional Text
    , oidcGroupsClaim : Optional Text
    , oidcGroupsPrefix : Optional Text
    , oidcIssuerURL : Optional Text
    , oidcClientID : Optional Text
    , oidcCAFile : Optional Text
    , proxyClientCertFile : Optional Text
    , proxyClientKeyFile : Optional Text
    , auditLogFormat : Optional Text
    , auditLogPath : Optional Text
    , auditLogMaxAge : Optional Natural
    , auditLogMaxBackups : Optional Natural
    , auditLogMaxSize : Optional Natural
    , auditPolicyFile : Optional Text
    , authenticationTokenWebhookConfigFile : Optional Text
    , authenticationTokenWebhookCacheTtl : Optional Natural
    , authorizationMode : Optional Text
    , authorizationRbacSuperUser : Optional Text
    , experimentalEncryptionProviderConfig : Optional Text
    , requestheaderUsernameHeaders : Optional (List Text)
    , requestheaderGroupHeaders : Optional (List Text)
    , requestheaderExtraHeaderPrefixes : Optional (List Text)
    , requestheaderClientCAFile : Optional Text
    , requestheaderAllowedNames : Optional (List Text)
    , featureGates : Optional (List { mapKey : Text, mapValue : Text })
    , maxRequestsInflight : Optional Natural
    , maxMutatingRequestsInflight : Optional Natural
    , etcdQuorumRead : Optional Bool
    , minRequestTimeout : Optional Natural
    , targetRamMb : Optional Natural
    }
, default =
    { image = None Text
    , disableBasicAuth = None Bool
    , logLevel = None Natural
    , cloudProvider = None Text
    , securePort = None Natural
    , insecurePort = None Natural
    , address = None Text
    , bindAddress = None Text
    , insecureBindAddress = None Text
    , enableBootstrapTokenAuth = None Bool
    , enableAggregatorRouting = None Bool
    , admissionControl = None (List Text)
    , enableAdmissionPlugins = None (List Text)
    , disableAdmissionPlugins = None (List Text)
    , serviceClusterIPRange = None Text
    , serviceNodePortRange = None Text
    , etcdServers = None (List Text)
    , etcdServersOverrides = None (List Text)
    , etcdCaFile = None Text
    , etcdCertFile = None Text
    , etcdKeyFile = None Text
    , basicAuthFile = None Text
    , clientCAFile = None Text
    , tlsCertFile = None Text
    , tlsPrivateKeyFile = None Text
    , tokenAuthFile = None Text
    , allowPrivileged = None Bool
    , apiServerCount = None Natural
    , runtimeConfig = None (List { mapKey : Text, mapValue : Text })
    , kubeletClientCertificate = None Text
    , kubeletClientKey = None Text
    , anonymousAuth = None Bool
    , kubeletPreferredAddressTypes = None (List Text)
    , storageBackend = None Text
    , oidcUsernameClaim = None Text
    , oidcUsernamePrefix = None Text
    , oidcGroupsClaim = None Text
    , oidcGroupsPrefix = None Text
    , oidcIssuerURL = None Text
    , oidcClientID = None Text
    , oidcCAFile = None Text
    , proxyClientCertFile = None Text
    , proxyClientKeyFile = None Text
    , auditLogFormat = None Text
    , auditLogPath = None Text
    , auditLogMaxAge = None Natural
    , auditLogMaxBackups = None Natural
    , auditLogMaxSize = None Natural
    , auditPolicyFile = None Text
    , authenticationTokenWebhookConfigFile = None Text
    , authenticationTokenWebhookCacheTtl = None Natural
    , authorizationMode = None Text
    , authorizationRbacSuperUser = None Text
    , experimentalEncryptionProviderConfig = None Text
    , requestheaderUsernameHeaders = None (List Text)
    , requestheaderGroupHeaders = None (List Text)
    , requestheaderExtraHeaderPrefixes = None (List Text)
    , requestheaderClientCAFile = None Text
    , requestheaderAllowedNames = None (List Text)
    , featureGates = None (List { mapKey : Text, mapValue : Text })
    , maxRequestsInflight = None Natural
    , maxMutatingRequestsInflight = None Natural
    , etcdQuorumRead = None Bool
    , minRequestTimeout = None Natural
    , targetRamMb = None Natural
    }
}
