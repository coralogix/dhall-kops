let Metadata = ./Metadata.dhall

let Spec = ./ClusterSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Metadata.Type
        , spec : Spec.Type
        }
    , default = { apiVersion = "kops/v1alpha2", kind = "Cluster" }
    }
