let KubeletConfigSpec =
      ../../../types/api/v1alpha2/KubeletConfigSpec.dhall : Type

in    { apiServers =
          None Text
      , anonymousAuth =
          None Bool
      , authorizationMode =
          None Text
      , bootstrapKubeconfig =
          None Text
      , clientCaFile =
          None Text
      , tlsCertFile =
          None Text
      , tlsPrivateKeyFile =
          None Text
      , kubeconfigPath =
          None Text
      , requireKubeconfig =
          None Bool
      , logLevel =
          None Natural
      , podManifestPath =
          None Text
      , hostnameOverride =
          None Text
      , podInfraContainerImage =
          None Text
      , seccompProfileRoot =
          None Text
      , allowPrivileged =
          None Bool
      , enableDebuggingHandlers =
          None Bool
      , registerNode =
          None Bool
      , nodeStatusUpdateFrequency =
          None Text
      , clusterDomain =
          None Text
      , clusterDNS =
          None Text
      , networkPluginName =
          None Text
      , cloudProvider =
          None Text
      , kubeletCgroups =
          None Text
      , runtimeCgroups =
          None Text
      , readOnlyPort =
          None Natural
      , systemCgroups =
          None Text
      , cgroupRoot =
          None Text
      , configureCbr0 =
          None Bool
      , hairpinMode =
          None Text
      , babysitDaemons =
          None Bool
      , maxPods =
          None Natural
      , nvidiaGPUs =
          None Natural
      , podCIDR =
          None Text
      , resolvConf =
          None Text
      , reconcileCIDR =
          None Bool
      , registerSchedulable =
          None Bool
      , serializeImagePulls =
          None Bool
      , nodeLabels =
          None (List { mapKey : Text, mapValue : Text })
      , nonMasqueradeCIDR =
          None Text
      , enableCustomMetrics =
          None Bool
      , networkPluginMTU =
          None Natural
      , imageGCHighThresholdPercent =
          None Natural
      , imageGCLowThresholdPercent =
          None Natural
      , imagePullProgressDeadline =
          None Text
      , evictionHard =
          None Text
      , evictionSoft =
          None Text
      , evictionSoftGracePeriod =
          None Text
      , evictionPressureTransitionPeriod =
          None Text
      , evictionMaxPodGracePeriod =
          None Natural
      , evictionMinimumReclaim =
          None Text
      , volumePluginDirectory =
          None Text
      , taints =
          None (List Text)
      , featureGates =
          None (List { mapKey : Text, mapValue : Text })
      , kubeReserved =
          None (List { mapKey : Text, mapValue : Text })
      , kubeReservedCgroup =
          None Text
      , systemReserved =
          None (List { mapKey : Text, mapValue : Text })
      , systemReservedCgroup =
          None Text
      , enforceNodeAllocatable =
          None Text
      , runtimeRequestTimeout =
          None Text
      , volumeStatsAggPeriod =
          None Text
      , failSwapOn =
          None Bool
      , experimentalAllowedUnsafeSysctls =
          None (List Text)
      , allowedUnsafeSysctls =
          None (List Text)
      , streamingConnectionIdleTimeout =
          None Text
      , dockerDisableSharedPID =
          None Bool
      , rootDir =
          None Text
      , authenticationTokenWebhook =
          None Bool
      , authenticationTokenWebhookCacheTtl =
          None Text
      }
    : KubeletConfigSpec
