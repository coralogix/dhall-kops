  { apiServers :
      Optional Text
  , anonymousAuth :
      Optional Bool
  , authorizationMode :
      Optional Text
  , bootstrapKubeconfig :
      Optional Text
  , clientCaFile :
      Optional Text
  , tlsCertFile :
      Optional Text
  , tlsPrivateKeyFile :
      Optional Text
  , kubeconfigPath :
      Optional Text
  , requireKubeconfig :
      Optional Bool
  , logLevel :
      Optional Natural
  , podManifestPath :
      Optional Text
  , hostnameOverride :
      Optional Text
  , podInfraContainerImage :
      Optional Text
  , seccompProfileRoot :
      Optional Text
  , allowPrivileged :
      Optional Bool
  , enableDebuggingHandlers :
      Optional Bool
  , registerNode :
      Optional Bool
  , nodeStatusUpdateFrequency :
      Optional Text
  , clusterDomain :
      Optional Text
  , clusterDNS :
      Optional Text
  , networkPluginName :
      Optional Text
  , cloudProvider :
      Optional Text
  , kubeletCgroups :
      Optional Text
  , runtimeCgroups :
      Optional Text
  , readOnlyPort :
      Optional Natural
  , systemCgroups :
      Optional Text
  , cgroupRoot :
      Optional Text
  , configureCbr0 :
      Optional Bool
  , hairpinMode :
      Optional Text
  , babysitDaemons :
      Optional Bool
  , maxPods :
      Optional Natural
  , nvidiaGPUs :
      Optional Natural
  , podCIDR :
      Optional Text
  , resolvConf :
      Optional Text
  , reconcileCIDR :
      Optional Bool
  , registerSchedulable :
      Optional Bool
  , serializeImagePulls :
      Optional Bool
  , nodeLabels :
      Optional (List { mapKey : Text, mapValue : Text })
  , nonMasqueradeCIDR :
      Optional Text
  , enableCustomMetrics :
      Optional Bool
  , networkPluginMTU :
      Optional Natural
  , imageGCHighThresholdPercent :
      Optional Natural
  , imageGCLowThresholdPercent :
      Optional Natural
  , imagePullProgressDeadline :
      Optional Text
  , evictionHard :
      Optional Text
  , evictionSoft :
      Optional Text
  , evictionSoftGracePeriod :
      Optional Text
  , evictionPressureTransitionPeriod :
      Optional Text
  , evictionMaxPodGracePeriod :
      Optional Natural
  , evictionMinimumReclaim :
      Optional Text
  , volumePluginDirectory :
      Optional Text
  , taints :
      Optional (List Text)
  , featureGates :
      Optional (List { mapKey : Text, mapValue : Text })
  , kubeReserved :
      Optional (List { mapKey : Text, mapValue : Text })
  , kubeReservedCgroup :
      Optional Text
  , systemReserved :
      Optional (List { mapKey : Text, mapValue : Text })
  , systemReservedCgroup :
      Optional Text
  , enforceNodeAllocatable :
      Optional Text
  , runtimeRequestTimeout :
      Optional Text
  , volumeStatsAggPeriod :
      Optional Text
  , failSwapOn :
      Optional Bool
  , experimentalAllowedUnsafeSysctls :
      Optional (List Text)
  , allowedUnsafeSysctls :
      Optional (List Text)
  , streamingConnectionIdleTimeout :
      Optional Text
  , dockerDisableSharedPID :
      Optional Bool
  , rootDir :
      Optional Text
  , authenticationTokenWebhook :
      Optional Bool
  , authenticationTokenWebhookCacheTtl :
      Optional Text
  }
: Type
