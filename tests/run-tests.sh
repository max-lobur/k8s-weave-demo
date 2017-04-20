function setup() {
    echo "========== Create dummy pods =========="
    kubectl create -f tests/dummy
    retry=0
    while true; do
        sleep 1
        retry=$((retry+1))
        in_ns=`kubectl -n net-policy-test get po | grep dummy | grep Running | wc -l`
        other_ns=`kubectl -n default get po | grep dummy | grep Running | wc -l`
        [[ "in_ns" -eq "3" ]] && [[ "other_ns" -eq "1" ]] && break
        if [[ retry -ge 15 ]]; then
            echo "ERROR: Timeout creating dummy pods";
            kubectl delete -f tests/dummy;
            exit 1;
        fi
    done

    kubectl -n net-policy-test get po | grep dummy
    kubectl -n default get po | grep dummy
}

function teardown() {
    echo "========== Cleanup =========="
    kubectl delete -f tests/dummy
}

function run_tests() {
    echo "========== Run tests =========="
    for f in `ls ./tests/test_*`;
    do
        bash $f && echo "TEST $f PASSED" || echo "TEST $f FAILED"
    done
}

setup
run_tests
#teardown
