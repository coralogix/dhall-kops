let ExecContainerAction =
      ../../../types/api/v1alpha2/ExecContainerAction.dhall : Type

in  { dockerImage =
        { disabled =
            None Bool
        , roles =
            None (List Text)
        , requires =
            None (List Text)
        , before =
            None (List Text)
        }
    , systemdUnit =
        { disabled =
            None Bool
        , roles =
            None (List Text)
        , requires =
            None (List Text)
        , before =
            None (List Text)
        , useRawManifest =
            None Bool
        }
    }
