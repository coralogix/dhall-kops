{ Type =
    { hashAmd64 : Optional Text
    , hashArm64 : Optional Text
    , urlAmd64 : Optional Text
    , urlArm64 : Optional Text
    }
, default =
  { hashAmd64 = None Text
  , hashArm64 = None Text
  , urlAmd64 = None Text
  , urlArm64 = None Text
  }
}
