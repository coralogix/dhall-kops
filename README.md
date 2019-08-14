# dhall-kops
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Dhall types for Kops

## Description

This repository includes types and default records in the [Dhall language](https://github.com/dhall-lang/dhall-lang) which allow for [Kops](https://github.com/kubernetes/kops) configuration to be generated.

This allows the user to more easily generate type-safe Kops configuration, through the use of the Dhall project's `dhall-to-yaml` tool.

## Install
For stability, users are encouraged to import from a tagged release, not from the master branch, and to watch for new releases. This project does not yet have rigorous testing set up for it and new commits on the master branch are prone to break compatiblility and are almost sure to change the import hash for the expression, thus the releases are currently `v0.x`.
```
https://raw.githubusercontent.com/coralogix/dhall-kops/v0.2.0/defaults/package.dhall sha256:0676ecdc8e7ee0883058a17342b3ceba54b6bc4ecea222b27cdbe55bf4476427
https://raw.githubusercontent.com/coralogix/dhall-kops/v0.2.0/types/package.dhall sha256:5651acaae268747be32d333552523915effabe3f50eb771c5e70862c54743bc3
```

## Usage
See `tests/api/v1alpha2/tests.dhall` for examples of each of the types and their corresponding defaults.

### CLI
```bash
kops replace -f <(dhall-to-yaml --omitNull <<< './example-cluster.dhall')
```

## Maintainers
[Ari Becker](https://github.com/ari-becker)
[Oded David](https://github.com/oded-dd)

## Contributing
TBD

## License
[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) © Coralogix, Inc.
