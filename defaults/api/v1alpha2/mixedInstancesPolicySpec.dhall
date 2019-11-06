let MixedInstancesPolicySpec =
      ../../../types/api/v1alpha2/MixedInstancesPolicySpec.dhall

in    { instances =
          None (List Text)
      , onDemandAllocationStrategy =
          None Text
      , onDemandBase =
          None Natural
      , onDemandAboveBase =
          None Natural
      , spotAllocationStrategy =
          None Text
      , spotInstancePools =
          None Natural
      }
    : MixedInstancesPolicySpec
