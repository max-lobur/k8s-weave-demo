kubectl -n net-policy-test exec -ti dummy-logger -- nc -w10 -q1 db 5432 && exit 1
exit 0
