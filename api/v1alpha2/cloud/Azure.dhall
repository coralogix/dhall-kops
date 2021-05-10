let Common = ./Common.dhall

let Azure =
      { Type =
            Common.Type
          ⩓ { subscriptionId : Optional Text
            , tenantId : Text
            , resourceGroupName : Optional Text
            , routeTableName : Optional Text
            , adminUser : Optional Text
            }
      , default =
            Common.default
          ∧ { subscriptionId = None Text
            , resourceGroupName = None Text
            , routeTableName = None Text
            , adminUser = None Text
            }
      }

let spellcheck = Azure::{ tenantId = "required" }

in  Azure
