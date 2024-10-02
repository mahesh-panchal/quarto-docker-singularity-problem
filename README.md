# Problem with Quarto in Singularity but not Docker

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