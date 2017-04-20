kubectl -n net-policy-test exec -ti dummy-api -- bash -c '[[ `echo "\n\n" | nc -u -w5 -q1 logger 514` == "hello udp" ]]'
exit $?
