let AwsAuthenticationSpec = ./AwsAuthenticationSpec.dhall

let AuthenticationSpec =
      { Type =
          { kopeio : Optional {}, aws : Optional AwsAuthenticationSpec.Type }
      , default = { kopeio = None {}, aws = None AwsAuthenticationSpec.Type }
      }

let test = AuthenticationSpec::{=}

in  AuthenticationSpec
