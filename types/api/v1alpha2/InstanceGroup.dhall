let Metadata = ./Metadata.dhall

let Spec = ./InstanceGroupSpec.dhall

in  { apiVersion : Text, kind : Text, metadata : Metadata, spec : Spec } : Type
