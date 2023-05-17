
# clusters

cluster-1

gcloud container --project "gcp-architect-364916" clusters create "cluster-1" --region "asia-east1" --no-enable-basic-auth --cluster-version "1.25.8-gke.500" --release-channel "regular" --machine-type "e2-medium" --image-type "COS_CONTAINERD" --disk-type "pd-balanced" --disk-size "100" --metadata disable-legacy-endpoints=true --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --max-pods-per-node "30" --num-nodes "1" --logging=SYSTEM,WORKLOAD --monitoring=SYSTEM --enable-ip-alias --network "projects/gcp-architect-364916/global/networks/default" --subnetwork "projects/gcp-architect-364916/regions/asia-east1/subnetworks/default" --no-enable-intra-node-visibility --default-max-pods-per-node "30" --no-enable-master-authorized-networks --addons HorizontalPodAutoscaling,HttpLoadBalancing,GcePersistentDiskCsiDriver --enable-autoupgrade --enable-autorepair --max-surge-upgrade 1 --max-unavailable-upgrade 0 --enable-shielded-nodes --services-secondary-range-name asia-east1-service-range --cluster-secondary-range-name asia-east1-pod-range --enable-private-nodes

asia-east1-pod-range 10.8.0.0/20
asia-east1-service-range 10.100.0.0/24


cluster-2

gcloud container --project "gcp-architect-364916" clusters create "cluster-2" --region "asia-east2" --no-enable-basic-auth --cluster-version "1.25.8-gke.500" --release-channel "regular" --machine-type "e2-medium" --image-type "COS_CONTAINERD" --disk-type "pd-balanced" --disk-size "100" --metadata disable-legacy-endpoints=true --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --max-pods-per-node "30" --num-nodes "1" --logging=SYSTEM,WORKLOAD --monitoring=SYSTEM --enable-ip-alias --network "projects/gcp-architect-364916/global/networks/default" --subnetwork "projects/gcp-architect-364916/regions/asia-east2/subnetworks/default" --no-enable-intra-node-visibility --default-max-pods-per-node "30" --no-enable-master-authorized-networks --addons HorizontalPodAutoscaling,HttpLoadBalancing,GcePersistentDiskCsiDriver --enable-autoupgrade --enable-autorepair --max-surge-upgrade 1 --max-unavailable-upgrade 0 --enable-shielded-nodes --services-secondary-range-name asia-east2-service-range --cluster-secondary-range-name asia-east2-pod-range --enable-private-nodes

asia-east2-pod-range 10.8.16.0/20
asia-east2-service-range 10.100.1.0/24


## clean up
