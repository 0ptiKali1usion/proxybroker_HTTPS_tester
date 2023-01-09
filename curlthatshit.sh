#!/bin/bash
cat proxies.txt | xargs -I '{}' echo echo curl --connect-timeout 2 -k -x '{}' https://getfoxyproxy.org/geoip/ \&\& curl --connect-timeout 2 -k -x '{}' https://getfoxyproxy.org/geoip/ >> test.sh
