# dbench-for-EKS
Instructions:
1. After creating the cluster, Clone this repo.
2. Create a PVC by using “kubectl apply -f  pvc.yaml”
3. Create a data-access pod by using “kubectl apply -f dataaccess/dataaccess.yaml”
4. Paste docker-entrypoint.sh by using “kubectl cp data/docker-entrypoint.sh dataaccess:/data/ docker-entrypoint.sh”
5. Now we must create a docker image from Dockerfile and upload it to AWS ECR.
6. Deploy the fio benchmarking job on AKS by using “kubectl apply -f dbench.yaml”, but make sure to change the name of ECR docker image.


The output is something like:
==================
= Dbench Summary =
==================
Random Read/Write IOPS: 75.7k/59.7k. BW: 523MiB/s / 500MiB/s
Average Latency (usec) Read/Write: 183.07/76.91
Sequential Read/Write: 536MiB/s / 512MiB/s
Mixed Random Read/Write IOPS: 43.1k/14.4k

