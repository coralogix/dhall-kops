let BastionLoadBalancerSpec =
      { Type = { additionalSecurityGroups : Optional (List Text) }
      , default.additionalSecurityGroups = None (List Text)
      }

let spellcheck = BastionLoadBalancerSpec::{=}

in  BastionLoadBalancerSpec
