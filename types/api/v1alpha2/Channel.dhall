let Metadata = ./Metadata.dhall : Type

let ChannelSpec = ./ChannelSpec.dhall : Type

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Metadata
      , spec :
          ChannelSpec
      }
    : Type
