let Metadata = ./Metadata.dhall : Type

let Spec = ./ClusterSpec.dhall : Type

in  { apiVersion : Text, kind : Text, metadata : Metadata, spec : Spec } : Type
