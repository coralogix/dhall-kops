let Metadata = (../../../ImportTypes.dhall).Kubernetes.meta.v1.ObjectMeta

let Spec = ./ClusterSpec.dhall

in    { apiVersion : Text, kind : Text, metadata : Metadata, spec : Spec.Union }
    : Type