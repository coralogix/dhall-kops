let LoadBalancerAccessSpec = ./LoadBalancerAccessSpec.dhall

in    < DNS :
          { dns : {} }
      | LoadBalancer :
          { loadBalancer : LoadBalancerAccessSpec }
      >
    : Type
