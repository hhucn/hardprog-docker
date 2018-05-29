#!/bin/bash

# gcc -Wall -std=c99 something.c -o program
echo -e '#!/bin/bash\n/usr/bin/gcc -Wall -std=c99 "$@"' > /usr/bin/gcca && chmod +x /usr/bin/gcca

# gcc -Wall -std=c99 -g -fprofile-arcs -ftest-coverage -pthread -lcheck -lrt -lm -lsubunit tests-for-something.c something.c -o tests
echo -e '#!/bin/bash\n/usr/bin/gcc -Wall -std=c99 -g -fprofile-arcs -ftest-coverage -pthread -lcheck -lrt -lm -lsubunit "$@"' > /usr/bin/gcct && chmod +x /usr/bin/gcct
