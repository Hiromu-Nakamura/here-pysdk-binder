# Docker image/container for HERE Data SDK for Python

Sample docker image for [HERE Data SDK for Python](https://developer.here.com/documentation/sdk-python-v2/dev_guide/index.html) available on [Binder](https://mybinder.org/).

This image is based on [micromamba-docker](https://hub.docker.com/r/mambaorg/micromamba)

## Usage

Click this binder badge [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Hiromu-Nakamura/here-pysdk-binder/HEAD)

After the binder lauched, you need to place your credential file at `home/micromamba/.here`. Upload the credential file via UI of JupyterLab. Then open terminal from JupyterLab launcher, and hit the following command.

`mv credentials.properties .here`

c.f. [Credentials Setup](https://developer.here.com/documentation/sdk-python-v2/dev_guide/topics/credentials.html)

## Author

* Hiromu Nakamura

## License
The codes inside of this project are released under the MIT License, see [LICENSE.md](LICENSE.md).

Please refer [Legal, privacy & security](https://legal.here.com/en-gb) about HERE Technologies products.