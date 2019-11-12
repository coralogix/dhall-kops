{ Type =
    { mtu : Natural
    , connLimit : Optional Natural
    , noMasqLocal : Optional Natural
    }
, default = { connLimit = None Natural, noMasqLocal = None Natural }
}
