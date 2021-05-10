let AWSLoadBalancerControllerConfig =
      { Type = { enabled : Optional Bool, version : Optional Text }
      , default = { enabled = None Bool, version = None Text }
      }

let test = AWSLoadBalancerControllerConfig::{=}

in  AWSLoadBalancerControllerConfig
