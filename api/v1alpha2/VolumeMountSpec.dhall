{ Type =
    { device : Text
    , filesystem : Text
    , formatOptions : Optional (List Text)
    , mountOptions : Optional (List Text)
    , path : Text
    }
, default =
    { formatOptions = None (List Text), mountOptions = None (List Text) }
}
