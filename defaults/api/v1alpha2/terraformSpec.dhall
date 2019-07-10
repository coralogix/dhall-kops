let TerraformSpec = ../../../types/api/v1alpha2/TerraformSpec.dhall : Type

in    { providerExtraConfig = None (List { mapKey : Text, mapValue : Text }) }
    : TerraformSpec
