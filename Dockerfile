FROM nfcore/base
MAINTAINER Gerrit Botha <gerrit.botha@gmail.com>
LABEL authors="gerrit.botha@gmail.com" \
    description="Docker image containing all requirements for nf-core-example pipeline."

COPY environment.yml /
RUN conda env update -n root -f /environment.yml && conda clean -a
