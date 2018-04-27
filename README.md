# AeroGear UnifiedPush Server APB

[![](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/aerogearcatalog/unifiedpush-apb/)
[![Docker Stars](https://img.shields.io/docker/stars/aerogearcatalog/unifiedpush-apb.svg)](https://registry.hub.docker.com/v2/repositories/aerogearcatalog/unifiedpush-apb/stars/count/)
[![Docker pulls](https://img.shields.io/docker/pulls/aerogearcatalog/unifiedpush-apb.svg)](https://registry.hub.docker.com/v2/repositories/aerogearcatalog/unifiedpush-apb/)
[![License](https://img.shields.io/:license-Apache2-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)

## Local Development

### Requirements

- OpenShift Origin [development environment](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs/getting_started.md#development-environment) for APB development.
- Install [apb tool](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs/apb_cli.md)

### Process

Upload the APB to the local openshift registry (Runs prepare,build,push and relist) [more info](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs/apb_cli.md#push)
```bash
apb push
```

For more information on APB development and apb command line options, check [ansible-playbook-bundle documentation](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs).

## Submitting Changes

To submit a change, please follow these instructions:

- Fork this repo.
- Make changes in your own repo, and use your own docker org while developing.
- Submit a pull request to this master on this repo.
