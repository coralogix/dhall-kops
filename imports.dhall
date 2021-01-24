{ Prelude =
    https://raw.githubusercontent.com/dhall-lang/dhall-lang/v15.0.0/Prelude/package.dhall sha256:6b90326dc39ab738d7ed87b970ba675c496bed0194071b332840a87261649dcd
, Kubernetes.IntOrString =
    let IntOrString =
        {- As this is the only part of dhall-kubernetes that is needed, it doesn't make sense
        -- to actually import dhall-kubernetes. This will never change.
        -}

          < Int : Integer | String : Text >

    in  IntOrString
}
