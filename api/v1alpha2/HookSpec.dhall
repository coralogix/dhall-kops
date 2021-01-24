let ExecContainerAction = ./ExecContainerAction.dhall

let DockerImage =
      let DockerImage =
            { Type =
                { disabled : Optional Bool
                , roles : Optional (List Text)
                , requires : Optional (List Text)
                , before : Optional (List Text)
                , execContainer : ExecContainerAction.Type
                }
            , default =
              { disabled = None Bool
              , roles = None (List Text)
              , requires = None (List Text)
              , before = None (List Text)
              }
            }

      let spellcheck =
            DockerImage::{
            , execContainer = ExecContainerAction::{ image = "required" }
            }

      in  DockerImage

let SystemdUnit =
      let SystemdUnit =
            { Type =
                { name : Text
                , disabled : Optional Bool
                , roles : Optional (List Text)
                , requires : Optional (List Text)
                , before : Optional (List Text)
                , manifest : Text
                , useRawManifest : Optional Bool
                }
            , default =
              { disabled = None Bool
              , roles = None (List Text)
              , requires = None (List Text)
              , before = None (List Text)
              , useRawManifest = None Bool
              }
            }

      let spellcheck = SystemdUnit::{ manifest = "required", name = "required" }

      in  SystemdUnit

let Union = < DockerImage : DockerImage.Type | SystemdUnit : SystemdUnit.Type >

in  { DockerImage, SystemdUnit, Union }
