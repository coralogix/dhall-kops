let Cloud = ./cloud/package.dhall

in    < GCE :
          Cloud.GCE
      | AWS :
          Cloud.AWS
      | VSphere :
          Cloud.VSphere
      | Openstack :
          { openstack : Cloud.Openstack }
      >
    : Type
