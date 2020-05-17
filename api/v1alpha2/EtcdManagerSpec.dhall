{ Type =
    { image : Optional Text
    , env : Optional (List { name : Text, value : Text })
    }
, default =
    { image = None Text, env = None (List { name : Text, value : Text }) }
}
