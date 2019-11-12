{ Type =
    { device : Text
    , encrypted : Bool
    , iops : Optional Natural
    , size : Natural
    , type : Text
    }
, default = { iops = None Natural }
}
