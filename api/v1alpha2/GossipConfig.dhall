let GossipConfigSecondary = ./GossipConfigSecondary.dhall

in  { Type =
        { protocol : Optional Text
        , listen : Optional Text
        , secret : Optional Text
        , secondary : Optional GossipConfigSecondary.Type
        }
    , default =
      { protocol = None Text
      , listen = None Text
      , secret = None Text
      , secondary = None GossipConfigSecondary.Type
      }
    }
