let DNSControllerGossipConfigSecondary =
      ./DNSControllerGossipConfigSecondary.dhall

let DNSControllerGossipConfig =
      { Type =
          { protocol : Optional Text
          , listen : Optional Text
          , secret : Optional Text
          , secondary : Optional DNSControllerGossipConfigSecondary.Type
          , seed : Optional Text
          }
      , default =
        { protocol = None Text
        , listen = None Text
        , secret = None Text
        , secondary = None DNSControllerGossipConfigSecondary.Type
        , seed = None Text
        }
      }

let spellcheck = DNSControllerGossipConfig::{=}

in  DNSControllerGossipConfig
