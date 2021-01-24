let VSphere =
      { Type =
          { vSphereUsername : Optional Text
          , vSpherePassword : Optional Text
          , vSphereServer : Optional Text
          , vSphereDatacenter : Optional Text
          , vSphereResourcePool : Optional Text
          , vSphereDatastore : Optional Text
          , vSphereCoreDNSServer : Optional Text
          }
      , default =
        { vSphereUsername = None Text
        , vSpherePassword = None Text
        , vSphereServer = None Text
        , vSphereDatacenter = None Text
        , vSphereResourcePool = None Text
        , vSphereDatastore = None Text
        , vSphereCoreDNSServer = None Text
        }
      }

let spellcheck = VSphere::{=}

in  VSphere
