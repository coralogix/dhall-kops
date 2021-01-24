let HTTPProxy =
      { Type = { host : Text, port : Optional Natural }
      , default.port = None Natural
      }

let spellcheck = HTTPProxy::{ host = "required" }

in  HTTPProxy
