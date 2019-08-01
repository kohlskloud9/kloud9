service_account="k9gkeserviceaccount@thiyagu-241522.iam.gserviceaccount.com"
service_account_key="/tmp/thiyagu-241522-26b7f7253773.json"
name_space="default"
project_name="thiyagu-241522"
project_location="us-west1-a"
cluster_name="gke_thiyagu-241522_us-west1-a_k9gkecluster"
user_name="gke_thiyagu-241522_us-west1-a_k9gkecluster"

gcloud auth activate-service-account "${service_account}" --key-file="${service_account_key}"
gcloud config set account "${service_account}"

gcloud container --project "${project_name}" clusters get-credentials k9gkecluster --zone="${project_location}"
kubectl config set-context "${name_space}" --namespace="${name_space}" --cluster="${cluster_name}" --user="${user_name}"
kubectl config use-context "${name_space}"
kubectl get pods
kubectl get pods --all-namespaces
kubectl get nodes

