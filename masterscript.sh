#!/bin/sh
proxybroker find --types HTTPS -l 20 | cut -d ' ' -f 5 | cut -d '>' -f 1 > proxies.txt
echo '#!/bin/sh' > test.sh
./curlthatshit.sh
chmod +x test.sh
./test.sh > results.txt
./filtertestrusults.sh
