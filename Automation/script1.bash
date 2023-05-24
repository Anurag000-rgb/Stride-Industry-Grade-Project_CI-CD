pods=$(kubectl get pods -o=custom-columns=NAME:.metadata.name --no-headers | awk '{print $1}')

readarray -t array <<< "$pods"

for i in "${array[@]}"
do
    kubectl delete pod $i
    kubectl get pods
done