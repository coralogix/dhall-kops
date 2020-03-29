{ Type =
    { name : Text
    , cidr : Text
    , zone : Text
    , region : Optional Text
    , id : Optional Text
    , egress : Optional Text
    , type : Text
    , publicIP : Optional Text
    }
, default =
  { region = None Text
  , id = None Text
  , egress = None Text
  , publicIP = None Text
  }
}
