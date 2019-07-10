let ExecContainerAction = ./ExecContainerAction.dhall

let DockerImage =
      { disabled :
          Optional Bool
      , roles :
          Optional (List Text)
      , requires :
          Optional (List Text)
      , before :
          Optional (List Text)
      , execContainer :
          ExecContainerAction
      }

let SystemdUnit =
      { name :
          Text
      , disabled :
          Optional Bool
      , roles :
          Optional (List Text)
      , requires :
          Optional (List Text)
      , before :
          Optional (List Text)
      , manifest :
          Text
      , useRawManifest :
          Optional Bool
      }

let Union = < DockerImage : DockerImage | SystemdUnit : SystemdUnit >

in  { DockerImage = DockerImage, SystemdUnit = SystemdUnit, Union = Union }
