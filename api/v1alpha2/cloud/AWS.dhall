let Common = ./Common.dhall

let Spotinst = ./Spotinst.dhall

let AWSEBSCSIDriver = ./AWSEBSCSIDriver.dhall

let AWS =
      { Type =
            Common.Type
          ⩓ Spotinst.Type
          ⩓ { awsEBSCSIDriver : Optional AWSEBSCSIDriver.Type
            , disableSecurityGroupIngress : Optional Bool
            , elbSecurityGroup : Optional Text
            }
      , default =
            Common.default
          ∧ Spotinst.default
          ∧ { awsEBSCSIDriver = None AWSEBSCSIDriver.Type
            , disableSecurityGroupIngress = None Bool
            , elbSecurityGroup = None Text
            }
      }

let spellcheck = AWS::{=}

in  AWS
