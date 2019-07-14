let ChannelImageSpec = ./ChannelImageSpec.dhall : Type

let ClusterSpec = ./ClusterSpec.dhall : Type

let KopsVersionSpec = ./KopsVersionSpec.dhall : Type

let KubernetesVersionSpec = ./KubernetesVersionSpec.dhall : Type

in    { images :
          Optional (List ChannelImageSpec)
      , cluster :
          Optional ClusterSpec
      , kopsVersions :
          Optional (List KopsVersionSpec)
      , kubernetesVersions :
          Optional (List KubernetesVersionSpec)
      }
    : Type
