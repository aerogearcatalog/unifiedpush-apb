# AeroGear UnifiedPush Server APB

[![](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/aerogearcatalog/unifiedpush-apb/)
[![Docker Stars](https://img.shields.io/docker/stars/aerogearcatalog/unifiedpush-apb.svg)](https://registry.hub.docker.com/v2/repositories/aerogearcatalog/unifiedpush-apb/stars/count/)
[![Docker pulls](https://img.shields.io/docker/pulls/aerogearcatalog/unifiedpush-apb.svg)](https://registry.hub.docker.com/v2/repositories/aerogearcatalog/unifiedpush-apb/)
[![License](https://img.shields.io/:license-Apache2-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)

This APB integrates the Aerogear UnifiedOush server into Openshift and the mobile platform. It allows you to manage your variants via the Openshift UI and generates
resources for the mobile CLI to export the configuration to your mobile apps.

# Usage

## Deployment

Deploy the APB from the Service Catalog. You can create a binding at deploy time or later. No further information or credentials are required.

## Creating variants

Variants are created via bindings. Once deployed you should see a button named `Create Binding` on your UPS service instance. This should open a dialog giving you the option to create
either an Android or iOS variant. Depending on the type you select here only one section of fields (either the Android or the iOS section) needs to be filled. There is one caveat with
the iOS certificate: it needs to be encoded with base64 before pasting it to the text area. If you're on MacOS run:

```
cat <path/to/your/.p12> | base64
```

If you're on Linux chances are that you're using a version of the base64 tool that does line wrapping. You need to disable this:

```
cat <path/to/your/.p12> | base64 --wrap=0
```

After clicking `Bind` your variant will be created in UPS and you should see a new binding on your mobile client.

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
