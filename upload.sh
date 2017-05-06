#!/bin/bash

if [ ! -e ~/.pypirc ]; then
cat <<EOF
# You haven't configure ~/.pypirc config file.
# In order to upload your package to PyPI, You need to configure first:

# Example:

cat <<PYPI >~/.pypirc

[distutils]
index-servers =
    pypi
    pypitest

[pypi]
username:fish_ball
password:******

[pypitest]
repository: https://testpypi.python.org/pypi
username:fish_ball
password:******

PYPI

EOF
fi
  

python setup.py sdist upload -r pypi
