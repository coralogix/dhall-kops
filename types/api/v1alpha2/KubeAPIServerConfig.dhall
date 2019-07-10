  { image :
      Optional Text
  , disableBasicAuth :
      Optional Bool
  , logLevel :
      Optional Natural
  , cloudProvider :
      Optional Text
  , securePort :
      Optional Natural
  , insecurePort :
      Optional Natural
  , address :
      Optional Text
  , bindAddress :
      Optional Text
  , insecureBindAddress :
      Optional Text
  , enableBootstrapTokenAuth :
      Optional Bool
  , enableAggregatorRouting :
      Optional Bool
  , admissionControl :
      Optional (List Text)
  , enableAdmissionPlugins :
      Optional (List Text)
  , disableAdmissionPlugins :
      Optional (List Text)
  , serviceClusterIPRange :
      Optional Text
  , serviceNodePortRange :
      Optional Text
  , etcdServers :
      Optional (List Text)
  , etcdServersOverrides :
      Optional (List Text)
  , etcdCaFile :
      Optional Text
  , etcdCertFile :
      Optional Text
  , etcdKeyFile :
      Optional Text
  , basicAuthFile :
      Optional Text
  , clientCAFile :
      Optional Text
  , tlsCertFile :
      Optional Text
  , tlsPrivateKeyFile :
      Optional Text
  , tokenAuthFile :
      Optional Text
  , allowPrivileged :
      Optional Bool
  , apiServerCount :
      Optional Natural
  , runtimeConfig :
      Optional (List { mapKey : Text, mapValue : Text })
  , kubeletClientCertificate :
      Optional Text
  , kubeletClientKey :
      Optional Text
  , anonymousAuth :
      Optional Bool
  , kubeletPreferredAddressTypes :
      Optional (List Text)
  , storageBackend :
      Optional Text
  , oidcUsernameClaim :
      Optional Text
  , oidcUsernamePrefix :
      Optional Text
  , oidcGroupsClaim :
      Optional Text
  , oidcGroupsPrefix :
      Optional Text
  , oidcIssuerURL :
      Optional Text
  , oidcClientID :
      Optional Text
  , oidcCAFile :
      Optional Text
  , proxyClientCertFile :
      Optional Text
  , proxyClientKeyFile :
      Optional Text
  , auditLogFormat :
      Optional Text
  , auditLogPath :
      Optional Text
  , auditLogMaxAge :
      Optional Natural
  , auditLogMaxBackups :
      Optional Natural
  , auditLogMaxSize :
      Optional Natural
  , auditPolicyFile :
      Optional Text
  , authenticationTokenWebhookConfigFile :
      Optional Text
  , authenticationTokenWebhookCacheTtl :
      Optional Natural
  , authorizationMode :
      Optional Text
  , authorizationRbacSuperUser :
      Optional Text
  , experimentalEncryptionProviderConfig :
      Optional Text
  , requestheaderUsernameHeaders :
      Optional (List Text)
  , requestheaderGroupHeaders :
      Optional (List Text)
  , requestheaderExtraHeaderPrefixes :
      Optional (List Text)
  , requestheaderClientCAFile :
      Optional Text
  , requestheaderAllowedNames :
      Optional (List Text)
  , featureGates :
      Optional (List { mapKey : Text, mapValue : Text })
  , maxRequestsInflight :
      Optional Natural
  , maxMutatingRequestsInflight :
      Optional Natural
  , etcdQuorumRead :
      Optional Bool
  , minRequestTimeout :
      Optional Natural
  , targetRamMb :
      Optional Natural
  }
: Type
