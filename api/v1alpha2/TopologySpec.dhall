let BastionSpec = ./BastionSpec.dhall

let DNSSpec = ./DNSSpec.dhall

in  { Type =
        { masters : Optional Text
        , nodes : Optional Text
        , bastion : Optional BastionSpec.Type
        , dns : Optional DNSSpec.Type
        }
    , default =
      { masters = None Text
      , nodes = None Text
      , bastion = None BastionSpec.Type
      , dns = None DNSSpec.Type
      }
    }
