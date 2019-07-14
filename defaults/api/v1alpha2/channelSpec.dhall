let ChannelImageSpec = ../../../types/api/v1alpha2/ChannelImageSpec.dhall : Type

let ClusterSpec = ../../../types/api/v1alpha2/ClusterSpec.dhall : Type

let KopsVersionSpec = ../../../types/api/v1alpha2/KopsVersionSpec.dhall : Type

let KubernetesVersionSpec =
      ../../../types/api/v1alpha2/KubernetesVersionSpec.dhall : Type

let ChannelSpec = ../../../types/api/v1alpha2/ChannelSpec.dhall : Type

in    { images =
          None (List ChannelImageSpec)
      , cluster =
          None ClusterSpec
      , kopsVersions =
          None (List KopsVersionSpec)
      , kubernetesVersions =
          None (List KubernetesVersionSpec)
      }
    : ChannelSpec
