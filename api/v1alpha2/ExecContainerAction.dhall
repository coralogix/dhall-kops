let ExecContainerAction =
      { Type =
          { image : Text
          , command : Optional (List Text)
          , environment : Optional (List { mapKey : Text, mapValue : Text })
          }
      , default =
        { command = None (List Text)
        , environment = None (List { mapKey : Text, mapValue : Text })
        }
      }

let spellcheck = ExecContainerAction::{ image = "required" }

in  ExecContainerAction
