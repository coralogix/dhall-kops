let Metadata = ./Metadata.dhall

let Spec = ./InstanceGroupSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Metadata.Type
        , spec : Spec.Type
        }
    , default = { apiVersion = "kops.k8s.io/v1alpha2", kind = "InstanceGroup" }
    }
