let Networking = ./networking/package.dhall

in  < Weave :
        { weave : Networking.Weave }
    | Calico :
        { calico : Networking.Calico }
    | AmazonVPC :
        { amazonvpc : Networking.AmazonVPC }
    | Cilium :
        { cilium : Networking.Cilium }
    | Flannel :
        { flannel : Networking.Flannel }
    | Classic :
        { classic : {} }
    | Kubenet :
        { kubenet : {} }
    | External :
        { external : {} }
    | CNI :
        { cni : Networking.CNI }
    | Kopeio :
        { kopeio : {} }
    | Canal :
        { canal : Networking.Canal }
    | Kuberouter :
        { kuberouter : {} }
    | Romana :
        { romana : Networking.Romana }
    | LyftVPC :
        { lyftvpc : Networking.LyftVPC }
    >
