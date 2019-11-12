let TerraformSpec = ./TerraformSpec.dhall

in  { Type = { terraform : TerraformSpec.Type }, default = {=} }
