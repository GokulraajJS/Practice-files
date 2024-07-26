#!/bin/bash

FILE=/home/ubuntu/file.txt

sed -i -e '/Welcome/{5,$s/give/learning/g}' $FILE
