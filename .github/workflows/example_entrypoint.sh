#!/bin/sh -l

# Setting environment variable
echo "API_KEY=abc123" >> $GITHUB_ENV

# Running a script and checking the exit code
./run-tests.sh
if [ $? -ne 0 ]; then
    echo "::error ::Tests failed"
    exit 1
fi

# Setting output parameters
echo "test-result=passed" >> $GITHUB_OUTPUT

# Final success message
echo "Action completed successfully"