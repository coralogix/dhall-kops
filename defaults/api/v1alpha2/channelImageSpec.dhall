let ChannelImageSpec = ../../../types/api/v1alpha2/ChannelImageSpec.dhall : Type

in    { labels =
          None (List { mapKey : Text, mapValue : Text })
      , providerID =
          None Text
      , name =
          None Text
      , kubernetesVersion =
          None Text
      }
    : ChannelImageSpec
