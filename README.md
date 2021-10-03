# Docker image/container for HERE Data SDK for Python

Sample docker image for [HERE Data SDK for Python](https://developer.here.com/documentation/sdk-python-v2/dev_guide/index.html) available on [Binder](https://mybinder.org/).

This image is based on [micromamba-docker](https://hub.docker.com/r/mambaorg/micromamba)


Japanese font (IPAexGothic) is available in the container. Please refer sample notebook `jpn_font_with_matplotlib.ipynb`

Another sample is from [Tutorials and Examples](https://developer.here.com/documentation/sdk-python-v2/dev_guide/topics/notebooks.html). Please download full of the samples from the link if you need.

Let me know if you need additonal python packages not listed on env.yml.

## Usage

Click this binder badge [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Hiromu-Nakamura/here-pysdk-binder/HEAD)

After the binder lauched, you need to place your credential file at `home/micromamba/.here`. Upload the credential file via UI of JupyterLab. Then open terminal from JupyterLab launcher, and hit the following command.

`mv credentials.properties .here`

c.f. [Credentials Setup](https://developer.here.com/documentation/sdk-python-v2/dev_guide/topics/credentials.html)

## Terms of Use

The Binder recommend agains using a Dockerfile for binder. Also the requirements for Dockerfiles are in beta and subject to change. cf . https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html#preparing-your-dockerfile

Therefore, this repository can be not available without any notice.

Also, this repository is completely personal experiment and no relationship with HERE Technologies or Project Jupyter.

Use of this repository is at your sole risk. All information, products, software, programs are with no warranties or guarantees. You will be solely responsible for any damages that may result.

## Author

* Hiromu Nakamura

## License
The codes inside of this project are released under the MIT License, see [LICENSE.md](LICENSE.md).

Please refer [Legal, privacy & security](https://legal.here.com/en-gb) about HERE Technologies products.