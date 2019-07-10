let KopsVersionSpec = ../../../types/api/v1alpha2/KopsVersionSpec.dhall : Type

in    { range =
          None Text
      , recommendedVersion =
          None Text
      , requiredVersion =
          None Text
      , kubernetesVersion =
          None Text
      }
    : KopsVersionSpec
