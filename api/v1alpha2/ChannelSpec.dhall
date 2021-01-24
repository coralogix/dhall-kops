let ChannelImageSpec = ./ChannelImageSpec.dhall

let ClusterSpec = ./ClusterSpec.dhall

let KopsVersionSpec = ./KopsVersionSpec.dhall

let KubernetesVersionSpec = ./KubernetesVersionSpec.dhall

let ChannelSpec =
      { Type =
          { images : Optional (List ChannelImageSpec.Type)
          , cluster : Optional ClusterSpec.Type
          , kopsVersions : Optional (List KopsVersionSpec.Type)
          , kubernetesVersions : Optional (List KubernetesVersionSpec.Type)
          }
      , default =
        { images = None (List ChannelImageSpec.Type)
        , cluster = None ClusterSpec.Type
        , kopsVersions = None (List KopsVersionSpec.Type)
        , kubernetesVersions = None (List KubernetesVersionSpec.Type)
        }
      }

let spellcheck = ChannelSpec::{=}

in  ChannelSpec
