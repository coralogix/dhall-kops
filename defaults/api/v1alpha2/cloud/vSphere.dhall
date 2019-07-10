let VSphere = ../../../../types/api/v1alpha2/cloud/VSphere.dhall

in    { vSphereUsername =
          None Text
      , vSpherePassword =
          None Text
      , vSphereServer =
          None Text
      , vSphereDatacenter =
          None Text
      , vSphereResourcePool =
          None Text
      , vSphereDatastore =
          None Text
      , vSphereCoreDNSServer =
          None Text
      }
    : VSphere
