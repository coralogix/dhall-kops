let BastionLoadBalancerSpec = ./BastionLoadBalancerSpec.dhall

in  { Type =
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
