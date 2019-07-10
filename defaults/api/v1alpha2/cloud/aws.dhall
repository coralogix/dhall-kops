let AWS = ../../../../types/api/v1alpha2/cloud/AWS.dhall

in    { disableSecurityGroupIngress =
          None Bool
      , elbSecurityGroup =
          None Text
      , spotinstProduct =
          None Text
      , spotinstOrientation =
          None Text
      }
    : AWS
