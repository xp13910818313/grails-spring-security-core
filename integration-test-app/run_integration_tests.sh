#!/bin/bash
source ~/.sdkman/bin/sdkman-init.sh
sdk use grails 2.4.5

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

set -xe
grails compile --non-interactive
grails test-app --non-interactive