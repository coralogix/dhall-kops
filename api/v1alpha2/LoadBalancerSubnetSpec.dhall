let LoadBalancerSubnetSpec =
      { Type =
          { name : Optional Text
          , privateIPv4Address : Optional Text
          , allocationId : Optional Text
          }
      , default =
        { name = None Text
        , privateIPv4Address = None Text
        , allocationId = None Text
        }
      }

let spellcheck = LoadBalancerSubnetSpec::{=}

in  LoadBalancerSubnetSpec
