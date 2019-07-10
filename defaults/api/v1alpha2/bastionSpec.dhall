let BastionSpec = ../../../types/api/v1alpha2/BastionSpec.dhall : Type

in    { bastionPublicName = None Text, idleTimeoutSeconds = None Natural }
    : BastionSpec
