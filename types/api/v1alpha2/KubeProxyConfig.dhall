  { image :
      Optional Text
  , cpuRequest :
      Optional Text
  , cpuLimit :
      Optional Text
  , memoryRequest :
      Optional Text
  , memoryLimit :
      Optional Text
  , logLevel :
      Optional Natural
  , clusterCIDR :
      Optional Text
  , hostnameOverride :
      Optional Text
  , bindAddress :
      Optional Text
  , master :
      Optional Text
  , enabled :
      Optional Bool
  , proxyMode :
      Optional Text
  , ipvsExcludeCidrs :
      Optional (List Text)
  , ipvsMinSyncPeriod :
      Optional Text
  , ipvsScheduler :
      Optional Text
  , ipvsSyncPeriod :
      Optional Text
  , featureGates :
      Optional (List { mapKey : Text, mapValue : Text })
  , conntrackMaxPerCore :
      Optional Natural
  , conntrackMin :
      Optional Natural
  }
: Type
