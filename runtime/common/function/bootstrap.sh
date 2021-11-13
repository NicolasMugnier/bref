#!/bin/sh

# Fail on error
set -e

export PHP_INI_SCAN_DIR="/opt/php-ini/:/var/task/php/conf.d/"

while true
do
    # We redirect stderr to stdout so that everything
    # written on the output ends up in Cloudwatch automatically
    /opt/bin/php "/opt/bref-internal-src/vendor/bref/bref/src/Toolbox/bootstrap.php" "function" 2>&1
done