let BastionSpec = ./BastionSpec.dhall

let DNSSpec = ./DNSSpec.dhall

in    { masters :
          Optional Text
      , nodes :
          Optional Text
      , bastion :
          Optional BastionSpec
      , dns :
          Optional DNSSpec
      }
    : Type
