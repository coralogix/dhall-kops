let AWSEBSCSIDriver =
      { Type = { enabled : Optional Bool }, default.enabled = None Bool }

let spellcheck = AWSEBSCSIDriver::{=}

in  AWSEBSCSIDriver
