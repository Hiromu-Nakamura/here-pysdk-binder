ARG here_version="2.4.0"
# ARG HOME=/home/micromamba

# Base image
FROM mambaorg/micromamba:0.15.3

LABEL maintainer="Hiromu Nakamrua"
LABEL description="HERE Data SDK for Python ${here_version} container for Binder"
LABEL version="1.0"

# ENV HOME ${HOME}
# Configure Japanese environment -------------
ENV LANG ja_JP.UTF-8

USER root

RUN apt-get update && \
    apt-get install -y \
        locales \
        fonts-ipaexfont && \
    localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8 && \
    apt-get clean
# -------------------------------------------

# Copy env.yml file
COPY --chown=micromamba:micromamba env.yml /tmp/env.yml
COPY --chown=micromamba:micromamba ./notebooks /home/micromamba

# micromamba's uid = 1000. cf. https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html#preparing-your-dockerfile
USER micromamba

RUN micromamba install -y -n base -f /tmp/env.yml && \
    micromamba clean --all --yes && \
    pip install --no-cache-dir jupyterlab jupyterlab-language-pack-ja-JP && \
    mkdir /home/micromamba/.here

WORKDIR /home/micromamba

# EXPOSE 8888

# CMD ["jupyter","lab","--ip=0.0.0.0","--port=8888","--no-browser"]