#!/bin/bash
__DIR="$( cd "$( readlink -f $(dirname "${BASH_SOURCE[0]}" ))" && pwd )"
export PYTHONPATH=${__DIR}/src
_ve/bin/python3 -m navpad.model