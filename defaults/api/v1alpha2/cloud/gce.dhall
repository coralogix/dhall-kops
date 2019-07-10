let GCE = ../../../../types/api/v1alpha2/cloud/GCE.dhall

in    { multizone =
          None Bool
      , nodeTags =
          None Text
      , nodeInstancePrefix =
          None Text
      , spotinstProduct =
          None Text
      , spotinstOrientation =
          None Text
      }
    : GCE
