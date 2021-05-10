let KubeAPIServerConfig =
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
          , appendAdmissionPlugins : Optional (List Text)
          , enableAdmissionPlugins : Optional (List Text)
          , disableAdmissionPlugins : Optional (List Text)
          , admissionControlConfigFile : Optional Text
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
          , tlsCipherSuites : Optional (List Text)
          , tlsMinVersion : Optional Text
          , tokenAuthFile : Optional Text
          , allowPrivileged : Optional Bool
          , apiServerCount : Optional Natural
          , runtimeConfig : Optional (List { mapKey : Text, mapValue : Text })
          , kubeletClientCertificate : Optional Text
          , kubeletCertificateAuthority : Optional Text
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
          , oidcRequiredClaim : Optional (List Text)
          , oidcCAFile : Optional Text
          , proxyClientCertFile : Optional Text
          , proxyClientKeyFile : Optional Text
          , auditLogFormat : Optional Text
          , auditLogPath : Optional Text
          , auditLogMaxAge : Optional Natural
          , auditLogMaxBackups : Optional Natural
          , auditLogMaxSize : Optional Natural
          , auditPolicyFile : Optional Text
          , auditWebhookBatchBufferSize : Optional Natural
          , auditWebhookBatchMaxSize : Optional Natural
          , auditWebhookBatchMaxWait : Optional Text
          , auditWebhookBatchThrottleBurst : Optional Natural
          , auditWebhookBatchThrottleEnable : Optional Bool
          , auditWebhookBatchThrottleQps : Optional Natural
          , auditWebhookConfigFile : Optional Text
          , auditWebhookInitialBackoff : Optional Text
          , auditWebhookMode : Optional Text
          , authenticationTokenWebhookConfigFile : Optional Text
          , authenticationTokenWebhookCacheTtl : Optional Natural
          , authorizationMode : Optional Text
          , authorizationWebhookConfigFile : Optional Text
          , authorizationWebhookCacheAuthorizedTtl : Optional Text
          , authorizationWebhookCacheUnauthorizedTtl : Optional Text
          , authorizationRbacSuperUser : Optional Text
          , encryptionProviderConfig : Optional Text
          , experimentalEncryptionProviderConfig : Optional Text
          , requestheaderUsernameHeaders : Optional (List Text)
          , requestheaderGroupHeaders : Optional (List Text)
          , requestheaderExtraHeaderPrefixes : Optional (List Text)
          , requestheaderClientCAFile : Optional Text
          , requestheaderAllowedNames : Optional (List Text)
          , featureGates : Optional (List { mapKey : Text, mapValue : Text })
          , maxRequestsInflight : Optional Natural
          , maxMutatingRequestsInflight : Optional Natural
          , http2MaxStreamsPerConnection : Optional Natural
          , etcdQuorumRead : Optional Bool
          , requestTimeout : Optional Natural
          , minRequestTimeout : Optional Natural
          , targetRamMb : Optional Natural
          , serviceAccountKeyFile : Optional (List Text)
          , serviceAccountSigningKeyFile : Optional Text
          , serviceAccountIssuer : Optional Text
          , serviceAccountJWKSURI : Optional Text
          , apiAudiences : Optional (List Text)
          , cpuRequest : Optional Text
          , cpuLimit : Optional Text
          , memoryRequest : Optional Text
          , memoryLimit : Optional Text
          , eventTTL : Optional Text
          , auditDynamicConfiguration : Optional Bool
          , enableProfiling : Optional Bool
          , corsAllowedOrigins : Optional (List Text)
          , defaultNotReadyTolerationSeconds : Optional Natural
          , defaultUnreachableTolerationSeconds : Optional Natural
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
        , appendAdmissionPlugins = None (List Text)
        , enableAdmissionPlugins = None (List Text)
        , disableAdmissionPlugins = None (List Text)
        , admissionControlConfigFile = None Text
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
        , tlsCipherSuites = None (List Text)
        , tlsMinVersion = None Text
        , tokenAuthFile = None Text
        , allowPrivileged = None Bool
        , apiServerCount = None Natural
        , runtimeConfig = None (List { mapKey : Text, mapValue : Text })
        , kubeletClientCertificate = None Text
        , kubeletCertificateAuthority = None Text
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
        , oidcRequiredClaim = None (List Text)
        , oidcCAFile = None Text
        , proxyClientCertFile = None Text
        , proxyClientKeyFile = None Text
        , auditLogFormat = None Text
        , auditLogPath = None Text
        , auditLogMaxAge = None Natural
        , auditLogMaxBackups = None Natural
        , auditLogMaxSize = None Natural
        , auditPolicyFile = None Text
        , auditWebhookBatchBufferSize = None Natural
        , auditWebhookBatchMaxSize = None Natural
        , auditWebhookBatchMaxWait = None Text
        , auditWebhookBatchThrottleBurst = None Natural
        , auditWebhookBatchThrottleEnable = None Bool
        , auditWebhookBatchThrottleQps = None Natural
        , auditWebhookConfigFile = None Text
        , auditWebhookInitialBackoff = None Text
        , auditWebhookMode = None Text
        , authenticationTokenWebhookConfigFile = None Text
        , authenticationTokenWebhookCacheTtl = None Natural
        , authorizationMode = None Text
        , authorizationWebhookConfigFile = None Text
        , authorizationWebhookCacheAuthorizedTtl = None Text
        , authorizationWebhookCacheUnauthorizedTtl = None Text
        , authorizationRbacSuperUser = None Text
        , encryptionProviderConfig = None Text
        , experimentalEncryptionProviderConfig = None Text
        , requestheaderUsernameHeaders = None (List Text)
        , requestheaderGroupHeaders = None (List Text)
        , requestheaderExtraHeaderPrefixes = None (List Text)
        , requestheaderClientCAFile = None Text
        , requestheaderAllowedNames = None (List Text)
        , featureGates = None (List { mapKey : Text, mapValue : Text })
        , maxRequestsInflight = None Natural
        , maxMutatingRequestsInflight = None Natural
        , http2MaxStreamsPerConnection = None Natural
        , etcdQuorumRead = None Bool
        , requestTimeout = None Natural
        , minRequestTimeout = None Natural
        , targetRamMb = None Natural
        , serviceAccountKeyFile = None (List Text)
        , serviceAccountSigningKeyFile = None Text
        , serviceAccountIssuer = None Text
        , serviceAccountJWKSURI = None Text
        , apiAudiences = None (List Text)
        , cpuRequest = None Text
        , cpuLimit = None Text
        , memoryRequest = None Text
        , memoryLimit = None Text
        , eventTTL = None Text
        , auditDynamicConfiguration = None Bool
        , enableProfiling = None Bool
        , corsAllowedOrigins = None (List Text)
        , defaultNotReadyTolerationSeconds = None Natural
        , defaultUnreachableTolerationSeconds = None Natural
        }
      }

let spellcheck = KubeAPIServerConfig::{=}

in  KubeAPIServerConfig
