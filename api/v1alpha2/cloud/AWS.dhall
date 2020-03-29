{ Type =
    { disableSecurityGroupIngress : Optional Bool
    , elbSecurityGroup : Optional Text
    , spotinstProduct : Optional Text
    , spotinstOrientation : Optional Text
    }
, default =
  { disableSecurityGroupIngress = None Bool
  , elbSecurityGroup = None Text
  , spotinstProduct = None Text
  , spotinstOrientation = None Text
  }
}
