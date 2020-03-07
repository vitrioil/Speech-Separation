#!/bin/bash

python3 setup.py sdist bdist_wheel
python3 -m pip install dist/src_rvpt-0.0.2-py3-none-any.whl
