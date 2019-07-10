let KubernetesVersionSpec =
      ../../../types/api/v1alpha2/KubernetesVersionSpec.dhall : Type

in    { range =
          None Text
      , recommendedVersion =
          None Text
      , requiredVersion =
          None Text
      }
    : KubernetesVersionSpec
