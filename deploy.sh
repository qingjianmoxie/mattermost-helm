

if [ $1 == 'delete' ];then
   helm delete  mattermost-server --namespace mattermost ./mattermost-team-edition
   kubectl delete -f ./mattermost-team-edition/config-pvc.yaml
   kubectl delete -f ./mattermost-team-edition/pv.yaml
elif [ $1 == 'create' ]; then  
   kubectl create -f ./mattermost-team-edition/config-pvc.yaml
   kubectl create -f ./mattermost-team-edition/pv.yaml
   helm install  mattermost-server --namespace mattermost ./mattermost-team-edition
else
   helm upgrade  mattermost-server --namespace mattermost ./mattermost-team-edition
fi
