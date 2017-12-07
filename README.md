# FH-Sync Server APB

[![](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/feedhenry/unifiedpush-apb/)
[![Docker Stars](https://img.shields.io/docker/stars/feedhenry/unifiedpush-apb.svg)](https://registry.hub.docker.com/v2/repositories/feedhenry/unifiedpush-apb/stars/count/)
[![Docker pulls](https://img.shields.io/docker/pulls/feedhenry/unifiedpush-apb.svg)](https://registry.hub.docker.com/v2/repositories/feedhenry/unifiedpush-apb/)
[![License](https://img.shields.io/:license-Apache2-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)

## Local Development

### Requirements

- [apb](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/README.md#installing-the-apb-tool)
- local [catasb](https://github.com/fusor/catasb) or similar oc cluster, which is configured to read from your docker org.

### Process

After making your required changes, update the `apb.yml` to point at your own docker organisation, run:

```bash
make DOCKERORG=<your docker org> DOCKERHOST=<defaulting to docker.io>
```

Login to your oc cluster:

```bash
oc login -u developer -p any
```

Now you can run `apb bootstrap` to update the catalog in your local cluster and see your local copy of this apb image.

If no changes were made to the apb.yml, then you do not need to run bootstrap for the changes to the ansible playbooks to be reflected in your local cluster (this is because the image already exists in your local docker registry).

## Submitting Changes

To submit a change, please follow these instructions:

- Fork this repo.
- Make changes in your own repo, and use your own docker org while developing.
- Submit a pull request to this master on this repo.
