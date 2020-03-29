{ Type =
    { disable : Optional Bool
    , watchIngress : Optional Bool
    , watchNamespace : Optional Text
    }
, default =
  { disable = None Bool, watchIngress = None Bool, watchNamespace = None Text }
}
