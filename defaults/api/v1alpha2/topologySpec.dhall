let BastionSpec = ../../../types/api/v1alpha2/BastionSpec.dhall : Type

let DNSSpec = ../../../types/api/v1alpha2/DNSSpec.dhall : Type

let TopologySpec = ../../../types/api/v1alpha2/TopologySpec.dhall : Type

in    { masters =
          None Text
      , nodes =
          None Text
      , bastion =
          None BastionSpec
      , dns =
          None DNSSpec
      }
    : TopologySpec
