

### Delete
   helm delete  mattermost-server --namespace mattermost ./mattermost-team-edition
   kubectl delete -f ./mattermost-team-edition/config-pvc.yaml
   kubectl delete -f ./mattermost-team-edition/pv.yaml

### Install
   kubectl create -f ./mattermost-team-edition/config-pvc.yaml
   kubectl create -f ./mattermost-team-edition/pv.yaml
   helm install  mattermost-server --namespace mattermost ./mattermost-team-edition

### Upgrade
   helm upgrade  mattermost-server --namespace mattermost ./mattermost-team-edition
