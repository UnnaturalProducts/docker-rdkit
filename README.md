# RDKit Docker Image

[RDKit](https://github.com/rdkit/rdkit) is a collection of cheminformatics and machine-learning software written in C++ and Python.

This Docker image provides a Ubuntu distribution with Python 3 and all other dependencies installed via the Debian package manager. RDKit is downloaded from the debian repository.

This Docker image is designed to provide a lightweight RDKit installation, without any unnecessary build tools or package management infrastructure in the final image. Other images may inherit from it, or use it as an earlier stage in a multi-stage build process.

## Running

Run `rdkit` container with an interactive shell:

    docker run -it --rm unpdocks/rdkit:latest /bin/bash

Or a python interpreter:

    docker run -it --rm unpdocks/rdkit:latest python3

## Building

A multi-stage docker build is used to produce a lightweight production image without all the build dependencies. To build, run:

    docker build -t rdkit .

## Related Projects

- https://github.com/InformaticsMatters/docker-rdkit
