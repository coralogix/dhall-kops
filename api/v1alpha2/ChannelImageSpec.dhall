let ChannelImageSpec =
      { Type =
          { labels : Optional (List { mapKey : Text, mapValue : Text })
          , providerID : Optional Text
          , architectureID : Optional Text
          , name : Optional Text
          , kubernetesVersion : Optional Text
          }
      , default =
        { labels = None (List { mapKey : Text, mapValue : Text })
        , providerID = None Text
        , architectureID = None Text
        , name = None Text
        , kubernetesVersion = None Text
        }
      }

let spellcheck = ChannelImageSpec::{=}

in  ChannelImageSpec
