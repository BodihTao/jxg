#!/bin/bash
cd "$(dirname "$0")"; pwd
git add *
git commit  -m "update"
git push
