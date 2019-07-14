let Metadata = (../../../ImportTypes.dhall).Kubernetes.meta.v1.ObjectMeta

let Spec = ./ClusterSpec.dhall : Type

in  { apiVersion : Text, kind : Text, metadata : Metadata, spec : Spec } : Type
