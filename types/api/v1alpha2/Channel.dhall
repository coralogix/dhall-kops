let ObjectMeta = (../../../ImportTypes.dhall).Kubernetes.meta.v1.ObjectMeta

let ChannelSpec = ./ChannelSpec.dhall : Type

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          ObjectMeta
      , spec :
          ChannelSpec
      }
    : Type
