#!/usr/bin/env sh
if [ -z "$VERSION" ]; then
    pip install --prefix="/install" fava
else
    pip install --prefix="/install" fava==$VERSION
fi
