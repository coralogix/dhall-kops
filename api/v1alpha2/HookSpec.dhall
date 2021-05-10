let ExecContainerAction = ./ExecContainerAction.dhall

let Common =
      { Type =
          { name : Optional Text
          , disabled : Optional Bool
          , roles : Optional (List Text)
          , requires : Optional (List Text)
          , before : Optional (List Text)
          }
      , default =
        { name = None Text
        , disabled = None Bool
        , roles = None (List Text)
        , requires = None (List Text)
        , before = None (List Text)
        }
      }

let DockerImage =
      let DockerImage =
            { Type = Common.Type ⩓ { execContainer : ExecContainerAction.Type }
            , default = Common.default
            }

      let spellcheck =
            DockerImage::{
            , execContainer = ExecContainerAction::{ image = "required" }
            }

      in  DockerImage

let SystemdUnit =
      let SystemdUnit =
            { Type =
                  Common.Type
                ⩓ { manifest : Text, useRawManifest : Optional Bool }
            , default = Common.default ∧ { useRawManifest = None Bool }
            }

      let spellcheck = SystemdUnit::{ manifest = "required" }

      in  SystemdUnit

let Union = < DockerImage : DockerImage.Type | SystemdUnit : SystemdUnit.Type >

in  { DockerImage, SystemdUnit, Union }
