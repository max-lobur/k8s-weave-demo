kubectl -n default exec -ti dummy-other-ns -- bash -c '[[ `echo "\n\n" | nc -u -w10 -q1 logger.net-policy-test 514` == "hello udp" ]]' && exit 1
exit 0
