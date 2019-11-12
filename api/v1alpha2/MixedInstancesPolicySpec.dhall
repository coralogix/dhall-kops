{ Type =
    { instances : Optional (List Text)
    , onDemandAllocationStrategy : Optional Text
    , onDemandBase : Optional Natural
    , onDemandAboveBase : Optional Natural
    , spotAllocationStrategy : Optional Text
    , spotInstancePools : Optional Natural
    }
, default =
    { instances = None (List Text)
    , onDemandAllocationStrategy = None Text
    , onDemandBase = None Natural
    , onDemandAboveBase = None Natural
    , spotAllocationStrategy = None Text
    , spotInstancePools = None Natural
    }
}
