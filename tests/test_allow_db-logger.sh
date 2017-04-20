kubectl -n net-policy-test exec -ti dummy-db -- bash -c '[[ `echo "\n\n" | nc -u -w3 -q1 logger 514` == "hello udp" ]]'
exit $?
