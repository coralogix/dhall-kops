let ExecContainerAction = ./ExecContainerAction.dhall

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

let Union = < DockerImage : DockerImage.Type | SystemdUnit : SystemdUnit.Type >

in  { DockerImage = DockerImage, SystemdUnit = SystemdUnit, Union = Union }
