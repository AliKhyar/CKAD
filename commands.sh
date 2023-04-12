CLUSTER=""
RG=""
az aks get-credentials --admin --name $CLUSTER --resource-group $RG


k run busybox --image=busybox --rm -it --restart=Never -n ckad -- wget 10.244.1.3:80


k logs loop -n team-red