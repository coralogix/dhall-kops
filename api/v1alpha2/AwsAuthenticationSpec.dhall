let AwsAuthenticationSpec =
      { Type =
          { image : Optional Text
          , backendmode : Optional Text
          , clusterID : Optional Text
          , memoryRequest : Optional Text
          , cpuRequest : Optional Text
          , memoryLimit : Optional Text
          , cpuLimit : Optional Text
          }
      , default =
        { image = None Text
        , backendmode = None Text
        , clusterID = None Text
        , memoryRequest = None Text
        , cpuRequest = None Text
        , memoryLimit = None Text
        , cpuLimit = None Text
        }
      }

let test = AwsAuthenticationSpec::{=}

in  AwsAuthenticationSpec
