# dhall-kops
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Dhall types for Kops

## Description

This repository includes types and default records in the [Dhall language](https://github.com/dhall-lang/dhall-lang) which allow for [Kops](https://github.com/kubernetes/kops) configuration to be generated.

This allows the user to more easily generate type-safe Kops configuration, through the use of the Dhall project's `dhall-to-yaml` tool.

## Install
For stability, users are encouraged to import from a tagged release, not from the master branch, and to watch for new releases. This project does not yet have rigorous testing set up for it and new commits on the master branch are prone to break compatiblility and are almost sure to change the import hash for the expression, thus the releases are currently `v0.x`.
```
https://raw.githubusercontent.com/coralogix/dhall-kops/v0.1.3/defaults/package.dhall sha256:e6dac45f7f34476b050dcb9aa5690359f3b46323e081829bdef87ad4d96af00e
https://raw.githubusercontent.com/coralogix/dhall-kops/v0.1.3/types/package.dhall sha256:f4da01587740aea3d187740eaab4cedc9a15ada55b6438c1f50919cba985634a
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
