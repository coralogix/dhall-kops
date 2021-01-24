let GossipConfigSecondary =
      { Type =
          { protocol : Optional Text
          , listen : Optional Text
          , secret : Optional Text
          }
      , default =
        { protocol = None Text, listen = None Text, secret = None Text }
      }

let spellcheck = GossipConfigSecondary::{=}

in  GossipConfigSecondary
