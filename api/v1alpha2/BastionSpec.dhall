let BastionLoadBalancerSpec = ./BastionLoadBalancerSpec.dhall

let BastionSpec =
      { Type =
          { bastionPublicName : Optional Text
          , idleTimeoutSeconds : Optional Natural
          , loadBalancer : Optional BastionLoadBalancerSpec.Type
          }
      , default =
        { bastionPublicName = None Text
        , idleTimeoutSeconds = None Natural
        , loadBalancer = None BastionLoadBalancerSpec.Type
        }
      }

let spellcheck = BastionSpec::{=}

in  BastionSpec
