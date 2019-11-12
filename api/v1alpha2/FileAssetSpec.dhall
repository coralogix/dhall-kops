{ Type =
    { name : Text
    , path : Text
    , roles : Optional (List Text)
    , content : Text
    , isBase64 : Optional Bool
    }
, default = { roles = None (List Text), isBase64 = None Bool }
}
