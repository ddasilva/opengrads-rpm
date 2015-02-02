#!/bin/bash

# Finds private links in executable files under the BUILD/ directory.
# Must build RPM once to populate BUILD.
# Author: Daniel da Silva

for ex in $(find BUILD -type f -executable); do
    if strings $ex | grep PRIVATE; then
        echo $ex
        echo
    fi
done
