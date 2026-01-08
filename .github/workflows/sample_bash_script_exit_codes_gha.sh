#!/bin/bash

# Example command
make build
exit_status=$?

if [ $exit_status -ne 0 ]; then
    echo "::error ::Build failed with exit code $exit_status"
    exit $exit_status
fi 

echo "::set-output name=status::success"
exit 0