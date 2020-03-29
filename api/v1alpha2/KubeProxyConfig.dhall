{ Type =
    { image : Optional Text
    , cpuRequest : Optional Text
    , cpuLimit : Optional Text
    , memoryRequest : Optional Text
    , memoryLimit : Optional Text
    , logLevel : Optional Natural
    , clusterCIDR : Optional Text
    , hostnameOverride : Optional Text
    , bindAddress : Optional Text
    , master : Optional Text
    , enabled : Optional Bool
    , proxyMode : Optional Text
    , ipvsExcludeCidrs : Optional (List Text)
    , ipvsMinSyncPeriod : Optional Text
    , ipvsScheduler : Optional Text
    , ipvsSyncPeriod : Optional Text
    , featureGates : Optional (List { mapKey : Text, mapValue : Text })
    , conntrackMaxPerCore : Optional Natural
    , conntrackMin : Optional Natural
    }
, default =
  { image = None Text
  , cpuRequest = None Text
  , cpuLimit = None Text
  , memoryRequest = None Text
  , memoryLimit = None Text
  , logLevel = None Natural
  , clusterCIDR = None Text
  , hostnameOverride = None Text
  , bindAddress = None Text
  , master = None Text
  , enabled = None Bool
  , proxyMode = None Text
  , ipvsExcludeCidrs = None (List Text)
  , ipvsMinSyncPeriod = None Text
  , ipvsScheduler = None Text
  , ipvsSyncPeriod = None Text
  , featureGates = None (List { mapKey : Text, mapValue : Text })
  , conntrackMaxPerCore = None Natural
  , conntrackMin = None Natural
  }
}
