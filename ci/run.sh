#!/bin/bash
echo y | fly -t demo set-pipeline -p boot -c pipeline.yml -l credentials.yml
