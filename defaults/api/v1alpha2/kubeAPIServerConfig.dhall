let KubeAPIServerConfig =
      ../../../types/api/v1alpha2/KubeAPIServerConfig.dhall : Type

in    { image =
          None Text
      , disableBasicAuth =
          None Bool
      , logLevel =
          None Natural
      , cloudProvider =
          None Text
      , securePort =
          None Natural
      , insecurePort =
          None Natural
      , address =
          None Text
      , bindAddress =
          None Text
      , insecureBindAddress =
          None Text
      , enableBootstrapTokenAuth =
          None Bool
      , enableAggregatorRouting =
          None Bool
      , admissionControl =
          None (List Text)
      , enableAdmissionPlugins =
          None (List Text)
      , disableAdmissionPlugins =
          None (List Text)
      , serviceClusterIPRange =
          None Text
      , serviceNodePortRange =
          None Text
      , etcdServers =
          None (List Text)
      , etcdServersOverrides =
          None (List Text)
      , etcdCaFile =
          None Text
      , etcdCertFile =
          None Text
      , etcdKeyFile =
          None Text
      , basicAuthFile =
          None Text
      , clientCAFile =
          None Text
      , tlsCertFile =
          None Text
      , tlsPrivateKeyFile =
          None Text
      , tokenAuthFile =
          None Text
      , allowPrivileged =
          None Bool
      , apiServerCount =
          None Natural
      , runtimeConfig =
          None (List { mapKey : Text, mapValue : Text })
      , kubeletClientCertificate =
          None Text
      , kubeletClientKey =
          None Text
      , anonymousAuth =
          None Bool
      , kubeletPreferredAddressTypes =
          None (List Text)
      , storageBackend =
          None Text
      , oidcUsernameClaim =
          None Text
      , oidcUsernamePrefix =
          None Text
      , oidcGroupsClaim =
          None Text
      , oidcGroupsPrefix =
          None Text
      , oidcIssuerURL =
          None Text
      , oidcClientID =
          None Text
      , oidcCAFile =
          None Text
      , proxyClientCertFile =
          None Text
      , proxyClientKeyFile =
          None Text
      , auditLogFormat =
          None Text
      , auditLogPath =
          None Text
      , auditLogMaxAge =
          None Natural
      , auditLogMaxBackups =
          None Natural
      , auditLogMaxSize =
          None Natural
      , auditPolicyFile =
          None Text
      , authenticationTokenWebhookConfigFile =
          None Text
      , authenticationTokenWebhookCacheTtl =
          None Natural
      , authorizationMode =
          None Text
      , authorizationRbacSuperUser =
          None Text
      , experimentalEncryptionProviderConfig =
          None Text
      , requestheaderUsernameHeaders =
          None (List Text)
      , requestheaderGroupHeaders =
          None (List Text)
      , requestheaderExtraHeaderPrefixes =
          None (List Text)
      , requestheaderClientCAFile =
          None Text
      , requestheaderAllowedNames =
          None (List Text)
      , featureGates =
          None (List { mapKey : Text, mapValue : Text })
      , maxRequestsInflight =
          None Natural
      , maxMutatingRequestsInflight =
          None Natural
      , etcdQuorumRead =
          None Bool
      , minRequestTimeout =
          None Natural
      , targetRamMb =
          None Natural
      }
    : KubeAPIServerConfig
