let Spotinst =
      { Type =
          { spotinstProduct : Optional Text
          , spotinstOrientation : Optional Text
          }
      , default =
        { spotinstProduct = None Text, spotinstOrientation = None Text }
      }

let spellcheck = Spotinst::{=}

in  Spotinst
