let Map = (../../imports.dhall).Prelude.Map.Type

let KubeletConfigSpec =
      { Type =
          { apiServers : Optional Text
          , anonymousAuth : Optional Bool
          , authorizationMode : Optional Text
          , bootstrapKubeconfig : Optional Text
          , clientCaFile : Optional Text
          , tlsCertFile : Optional Text
          , tlsPrivateKeyFile : Optional Text
          , tlsCipherSuites : Optional (List Text)
          , tlsMinVersion : Optional Text
          , kubeconfigPath : Optional Text
          , requireKubeconfig : Optional Bool
          , logLevel : Optional Natural
          , podManifestPath : Optional Text
          , hostnameOverride : Optional Text
          , podInfraContainerImage : Optional Text
          , seccompProfileRoot : Optional Text
          , allowPrivileged : Optional Bool
          , enableDebuggingHandlers : Optional Bool
          , registerNode : Optional Bool
          , nodeStatusUpdateFrequency : Optional Text
          , clusterDomain : Optional Text
          , clusterDNS : Optional Text
          , networkPluginName : Optional Text
          , cloudProvider : Optional Text
          , kubeletCgroups : Optional Text
          , runtimeCgroups : Optional Text
          , readOnlyPort : Optional Natural
          , systemCgroups : Optional Text
          , cgroupRoot : Optional Text
          , configureCbr0 : Optional Bool
          , hairpinMode : Optional Text
          , babysitDaemons : Optional Bool
          , maxPods : Optional Natural
          , nvidiaGPUs : Optional Natural
          , podCIDR : Optional Text
          , resolvConf : Optional Text
          , reconcileCIDR : Optional Bool
          , registerSchedulable : Optional Bool
          , serializeImagePulls : Optional Bool
          , nodeLabels : Optional (Map Text Text)
          , nonMasqueradeCIDR : Optional Text
          , enableCustomMetrics : Optional Bool
          , networkPluginMTU : Optional Natural
          , imageGCHighThresholdPercent : Optional Natural
          , imageGCLowThresholdPercent : Optional Natural
          , imagePullProgressDeadline : Optional Text
          , evictionHard : Optional Text
          , evictionSoft : Optional Text
          , evictionSoftGracePeriod : Optional Text
          , evictionPressureTransitionPeriod : Optional Text
          , evictionMaxPodGracePeriod : Optional Natural
          , evictionMinimumReclaim : Optional Text
          , volumePluginDirectory : Optional Text
          , taints : Optional (List Text)
          , featureGates : Optional (Map Text Text)
          , kubeReserved : Optional (Map Text Text)
          , kubeReservedCgroup : Optional Text
          , systemReserved : Optional (Map Text Text)
          , systemReservedCgroup : Optional Text
          , enforceNodeAllocatable : Optional Text
          , runtimeRequestTimeout : Optional Text
          , volumeStatsAggPeriod : Optional Text
          , failSwapOn : Optional Bool
          , experimentalAllowedUnsafeSysctls : Optional (List Text)
          , allowedUnsafeSysctls : Optional (List Text)
          , streamingConnectionIdleTimeout : Optional Text
          , dockerDisableSharedPID : Optional Bool
          , rootDir : Optional Text
          , authenticationTokenWebhook : Optional Bool
          , authenticationTokenWebhookCacheTtl : Optional Text
          , cpuCFSQuota : Optional Bool
          , cpuCFSQuotaPeriod : Optional Text
          , cpuManagerPolicy : Optional Text
          , registryPullQPS : Optional Natural
          , registryBurst : Optional Natural
          , topologyManagerPolicy : Optional Text
          , rotateCertificates : Optional Bool
          , protectKernelDefaults : Optional Bool
          , cgroupDriver : Optional Text
          , housekeepingInterval : Optional Text
          , eventQPS : Optional Natural
          , eventBurst : Optional Natural
          , containerLogMaxSize : Optional Text
          , containerLogMaxFiles : Optional Natural
          }
      , default =
        { apiServers = None Text
        , anonymousAuth = None Bool
        , authorizationMode = None Text
        , bootstrapKubeconfig = None Text
        , clientCaFile = None Text
        , tlsCertFile = None Text
        , tlsPrivateKeyFile = None Text
        , tlsCipherSuites = None (List Text)
        , tlsMinVersion = None Text
        , kubeconfigPath = None Text
        , requireKubeconfig = None Bool
        , logLevel = None Natural
        , podManifestPath = None Text
        , hostnameOverride = None Text
        , podInfraContainerImage = None Text
        , seccompProfileRoot = None Text
        , allowPrivileged = None Bool
        , enableDebuggingHandlers = None Bool
        , registerNode = None Bool
        , nodeStatusUpdateFrequency = None Text
        , clusterDomain = None Text
        , clusterDNS = None Text
        , networkPluginName = None Text
        , cloudProvider = None Text
        , kubeletCgroups = None Text
        , runtimeCgroups = None Text
        , readOnlyPort = None Natural
        , systemCgroups = None Text
        , cgroupRoot = None Text
        , configureCbr0 = None Bool
        , hairpinMode = None Text
        , babysitDaemons = None Bool
        , maxPods = None Natural
        , nvidiaGPUs = None Natural
        , podCIDR = None Text
        , resolvConf = None Text
        , reconcileCIDR = None Bool
        , registerSchedulable = None Bool
        , serializeImagePulls = None Bool
        , nodeLabels = None (Map Text Text)
        , nonMasqueradeCIDR = None Text
        , enableCustomMetrics = None Bool
        , networkPluginMTU = None Natural
        , imageGCHighThresholdPercent = None Natural
        , imageGCLowThresholdPercent = None Natural
        , imagePullProgressDeadline = None Text
        , evictionHard = None Text
        , evictionSoft = None Text
        , evictionSoftGracePeriod = None Text
        , evictionPressureTransitionPeriod = None Text
        , evictionMaxPodGracePeriod = None Natural
        , evictionMinimumReclaim = None Text
        , volumePluginDirectory = None Text
        , taints = None (List Text)
        , featureGates = None (Map Text Text)
        , kubeReserved = None (Map Text Text)
        , kubeReservedCgroup = None Text
        , systemReserved = None (Map Text Text)
        , systemReservedCgroup = None Text
        , enforceNodeAllocatable = None Text
        , runtimeRequestTimeout = None Text
        , volumeStatsAggPeriod = None Text
        , failSwapOn = None Bool
        , experimentalAllowedUnsafeSysctls = None (List Text)
        , allowedUnsafeSysctls = None (List Text)
        , streamingConnectionIdleTimeout = None Text
        , dockerDisableSharedPID = None Bool
        , rootDir = None Text
        , authenticationTokenWebhook = None Bool
        , authenticationTokenWebhookCacheTtl = None Text
        , cpuCFSQuota = None Bool
        , cpuCFSQuotaPeriod = None Text
        , cpuManagerPolicy = None Text
        , registryPullQPS = None Natural
        , registryBurst = None Natural
        , topologyManagerPolicy = None Text
        , rotateCertificates = None Bool
        , protectKernelDefaults = None Bool
        , cgroupDriver = None Text
        , housekeepingInterval = None Text
        , eventQPS = None Natural
        , eventBurst = None Natural
        , containerLogMaxSize = None Text
        , containerLogMaxFiles = None Natural
        }
      }

let spellcheck = KubeletConfigSpec::{=}

in  KubeletConfigSpec
