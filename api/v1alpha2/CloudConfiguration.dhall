let Cloud = ./cloud/package.dhall

in  < GCE : Cloud.GCE.Type
    | AWS : Cloud.AWS.Type
    | VSphere : Cloud.VSphere.Type
    | Openstack : { openstack : Cloud.Openstack.Type }
    >
