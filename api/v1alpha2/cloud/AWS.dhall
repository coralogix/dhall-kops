let AWSEBSCSIDriver = ./AWSEBSCSIDriver.dhall

in  { Type =
        { awsEBSCSIDriver : Optional AWSEBSCSIDriver.Type
        , disableSecurityGroupIngress : Optional Bool
        , elbSecurityGroup : Optional Text
        , spotinstProduct : Optional Text
        , spotinstOrientation : Optional Text
        }
    , default =
      { awsEBSCSIDriver = None AWSEBSCSIDriver.Type
      , disableSecurityGroupIngress = None Bool
      , elbSecurityGroup = None Text
      , spotinstProduct = None Text
      , spotinstOrientation = None Text
      }
    }
