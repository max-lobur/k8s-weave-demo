kubectl -n net-policy-test exec -ti dummy-api -- nc -w5 -q1 db 5432
exit $?
