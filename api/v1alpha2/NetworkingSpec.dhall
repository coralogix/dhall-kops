let Networking = ./networking/package.dhall

in  < Weave : { weave : Networking.Weave.Type }
    | Calico : { calico : Networking.Calico.Type }
    | AmazonVPC : { amazonvpc : Networking.AmazonVPC.Type }
    | Cilium : { cilium : Networking.Cilium.Type }
    | Flannel : { flannel : Networking.Flannel.Type }
    | Classic : { classic : {} }
    | Kubenet : { kubenet : {} }
    | External : { external : {} }
    | CNI : { cni : Networking.CNI.Type }
    | Kopeio : { kopeio : {} }
    | Canal : { canal : Networking.Canal.Type }
    | Kuberouter : { kuberouter : {} }
    | Romana : { romana : Networking.Romana.Type }
    | LyftVPC : { lyftvpc : Networking.LyftVPC.Type }
    >
