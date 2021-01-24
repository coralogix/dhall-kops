let TerraformSpec =
      { Type =
          { providerExtraConfig :
              Optional (List { mapKey : Text, mapValue : Text })
          }
      , default.providerExtraConfig =
          None (List { mapKey : Text, mapValue : Text })
      }

let spellcheck = TerraformSpec::{=}

in  TerraformSpec
