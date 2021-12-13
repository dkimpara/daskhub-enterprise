# daskhub-enterprise
daskhub with jupyter enterprise gateway

## custom image specs
You can define custom notebook images by mounting the kernels subdirectory to the docker image defined in dockerfile-custom-image. See enterprise gateway documentation for details.

## quirks
You must name the release 'app' or change the singleuser.extraEnv.REDIS_HOST field to your '{release name}-redis-master'. All the solutions to put the release name in automatically didn't work. i.e.

```console
helm install -f values.yaml -f secrets.yaml app .
```

## secrets.yaml instructions

Use the secrets-sample.yaml file and generate the two tokens with

```console
openssl rand -hex 32  # generate secret-token
```
