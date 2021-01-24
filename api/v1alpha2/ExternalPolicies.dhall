{ Type =
    { node : Optional (List Text)
    , master : Optional (List Text)
    , bastion : Optional (List Text)
    }
, default =
  { node = None (List Text)
  , master = None (List Text)
  , bastion = None (List Text)
  }
}
