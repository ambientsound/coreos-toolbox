# coreos-toolbox

Dockerfile for building a CoreOS toolbox with my customized setup.

Use by putting the following into `~/.toolboxrc`:

```
TOOLBOX_DOCKER_IMAGE=ambientsound/coreos-toolbox
TOOLBOX_DOCKER_TAG=latest
```

And then executing:

```
toolbox
```
