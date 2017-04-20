kubectl -n default exec -ti dummy-other-ns -- bash -c '[[ `echo "\n\n" | nc -u -w5 -q1 logger 514` == "hello udp" ]]' && exit 1
exit 0
