#!/bin/bash

http_code=$(curl --write-out %{http_code} --silent --output /dev/null guvi.in)

if [ $http_code -eq 200 ]; then
        echo "The Response code of guvi.in is : $http_code"
        echo "The HTTP connection is Success"
else
        echo "The Response code of guvi.in is : $http_code"
        echo "The HTTP connection is Failure"

fi
