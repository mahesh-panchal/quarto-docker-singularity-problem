# Problem with Quarto in Singularity but not Docker

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/mahesh-panchal/quarto-docker-singularity-problem)

The containers install quarto with the same environment in the same way, but in singularity, `deno` fails to be found, unlike docker.

```bash
# Works
nextflow run main.nf -profile dockerDockerImg
```

```bash
# Fails
nextflow run main.nf -profile singularityDockerImg
```

```bash
# Fails
nextflow run main.nf -profile singularitySingularityImg
```

```bash
# Works
pixi run nextflow run main.nf
```

## Container creation logs

Docker
: https://wave.seqera.io/view/builds/a0afd98904fa925c_1

Singularity
: https://wave.seqera.io/view/builds/7ec20cda78dea241_1
