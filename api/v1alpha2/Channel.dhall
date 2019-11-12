let Metadata = ./Metadata.dhall

let ChannelSpec = ./ChannelSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Metadata.Type
        , spec : ChannelSpec.Type
        }
    , default = { apiVersion = "kops/v1alpha2", kind = "Channel" }
    }
