let ChannelImageSpec = ./ChannelImageSpec.dhall : Type

let ClusterSpec = ./ClusterSpec.dhall

let KopsVersionSpec = ./KopsVersionSpec.dhall : Type

let KubernetesVersionSpec = ./KubernetesVersionSpec.dhall : Type

in    { images :
          Optional (List ChannelImageSpec)
      , cluster :
          Optional ClusterSpec.Union
      , kopsVersions :
          Optional (List KopsVersionSpec)
      , kubernetesVersions :
          Optional (List KubernetesVersionSpec)
      }
    : Type
