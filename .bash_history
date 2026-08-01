mysql -h 127.0.0.1 -u devuser -p'developer' --port 13306 sakila
ssh lab@utility
lab start virtualization-deploy 
oc login -u admin -p redhat https://api.ocp4.apps.example.com:6443
oc login -u developer -p developer https://api.ocp4.apps.example.com:6443
ssh lab@utility
oc login -u developer -p developer https://api.ocp4.apps.example.com:6443
oc whoami 
ssh lab@utility
oc login -u kubeadmin -p 66M7c-sxyyY-h2n83-66tAx https://api.ocp4.apps.example.com:6443
uptime
ssh lab@utility
oc get events
oc login -u system:admin https://api.ocp4.apps.example.com:6443
oc login -u developer -p developer https://api.ocp4.example.com:6443
oc project virtualization-deploy 
oc explain  virualmachine
oc explain  VirualMachine
oc explain  VirtualMachine
oc explain  VirtualMachineInstance
oc project
oc whoami 
oc get v,.vmi
oc get vm,vmi
oc get po
oc get vm,vmi -owide
oc get vm -owide
oc get vmi -owide
virtctl stop rhel9-tets
virtctl stop rhel9-test
oc get vmi,po,vm
oc get events 
lab finish virtualization-deploy
lab start accessing-creating
oc project accessing-creating 
oc get all
oc get vm
oc get secrets 
oc describe secret/lab-key
virtctl  ssh -i ~/.ssh/lab_rsa --username developer hello-world-template
virtctl -n accessing-creating ssh cloud-user@hello-world-template --identity-file=/home/student/.ssh/lab_rsa
virtctl stop hello-world-template
virtctl  delete hello-world-template
virtctl  delete vm hello-world-template
virtctl  --help
oc delete  vm hello-world-template
lab finish accessing-creating
lab start accessing-gui
oc whoami --show-console | xargs firefox &
lab finish accessing-gui 
lab start accessing-clicreate
oc whoami 
oc project accessing-clicreate 
cat ~/DO0022L/labs/accessing-clicreate
ll
cat ~/DO0022L/labs/accessing-clicreate
cd ~/DO0022L/labs/accessing-clicreate
echo "redhatocp" > developer-password
virtctl  create vm 
oc get vm 
oc get po
virtctl  create vm  --help
virtctl create vm --name rhel9-database --namespace accessing-clicreate --memory 5Gi --volume-import type:ds,src:openshift-virtualization-os-images/rhel9-mariadb --user developer --password-file developer-password --ssh-key "$(cat ~/.ssh/lab_rsa.pub)" > rhel9-database.yaml
echo 'se nu ts=2 et ai cuc cul paste hlsearch' | tee -a /home/student/.vimrc
cat /home/student/.vimrc
vim rhel9-database.yaml 
oc apply  -f rhel9-database.yaml
oc get vm
oc get dv
oc get volume
oc edit vm rhel9-database 
oc get vm
virtctl restart rhel9-database
ov get vm
oc get vm
virtctl  vnc rhel9-database
oc describe vmi rhel9-database | grep -i memo
virtctl  vnc rhel9-database
virtctl  ssh  developer@rhel9-database -i ~/.ssh/lab_rsa
virtctl  port-forward 
virtctl  port-forward vm/rhel9-database 13306:3306
virtctl stop rhel9-database
oc get vm
oc delete vm rhel9-database 
cd
lab finish accessing-clicreate
lab start network-services
oc project
oc project network-services 
oc get vm
oc edit vm mariadb-server 
virtctl restart  mariadb-server
oc get vm
oc describe vm mariadb-server | grep -i lables: -A5
oc describe vm mariadb-server | grep -i lables -A5
oc describe vm mariadb-server
oc get vm mariadb-server | grep -i lables -A5
oc get vm mariadb-server 
oc get vm mariadb-server -oyaml| grep -i lables -A5
oc get vm mariadb-server -oyaml
oc get vm mariadb-server -oyaml| grep -i labels -A5
oc get ep
oc get svc,ep
oc edit svc mariadb 
oc get ep
virtctl vnc  mariadb-server
virtctl vnc  mariadb-server &
oc project
oc new-project tets
oc delete project tets
oc new-project test
oc run testdb -it -rm --image=registry.ocp4.example.com:8443/redhattraining/mariadb:10.5 --command -- mysql --connect-timeout=5 -u developer -pdeveloper -h mariadb.network-services.svc.cluster.local sakila
oc run testdb -it --rm --image=registry.ocp4.example.com:8443/redhattraining/mariadb:10.5 --command -- mysql --connect-timeout=5 -u developer -pdeveloper -h mariadb.network-services.svc.cluster.local sakila
oc run testdb -it --rm --image=registry.ocp4.example.com:8443/redhattraining/mariadb:10.5 --command -- mysql --connect-timeout=5 -u devuser -p'developer' -h mariadb.network-services.svc.cluster.local sakila
history 
oc run testdb -it --rm --image=registry.ocp4.example.com:8443/redhattraining/mariadb:10.5 --command -- mysql --connect-timeout=5 -u devuser -pdeveloper -h mariadb.network-services.svc.cluster.local sakila
cd ; oc delete project test ; lab finish network-services
lab start network-udn
oc project network-udn 
oc get all
oc get userdefinednetworks.k8s.ovn.org 
oc get userdefinednetworks.k8s.ovn.org  -oyaml
oc get userdefinednetworks.k8s.ovn.org  -oyaml > udn.yaml
vim udn.yaml
oc apply  -f udn.yaml
vim udn.yaml
oc run udn-test -it --rm --image=image-registry.openshift-image-registry.svc:5000/openshift/tools
virtctl migrate help
virtctl list 
virtctl show vm
oc get all
virtctl migate hello-udn
virtctl migrate hello-udn
oc get vm -owide
oc get all  -owide
oc get events
oc get events | grep -i migrate
virtctl migrate hello-udn
oc get events | grep -i migrate
oc run udn-test -it --rm --image=image-registry.openshift-image-registry.svc:5000/openshift/tools -- curl 10.0.0.3
oc run udn-test -it --rm --image=image-registry.openshift-image-registry.svc:5000/openshift/tools
oc delete udn-test
oc delete po udn-test
oc run udn-test -it --rm --image=image-registry.openshift-image-registry.svc:5000/openshift/tools
virtctl stop hello-udb
virtctl stop hello-udn
virtctl delete vm hello-udn
ov delete vm hello-udn
oc delete vm hello-udn
oc get udb
oc get udn
oc get userdefinednetworks.k8s.ovn.org 
oc delete userdefinednetworks.k8s.ovn.org primary-udn 
lab finish network-udn
lab start network-external
oc project network-external 
oc get all
oc get vm -oyaml | grep -i labels: -A5
oc get vmi -oyaml | grep -i labels: -A5
oc get svc
virtctl epose vm 
virtctl expose vm 
virtctl expose vm  help
virtctl show
virtctl list
oc get vm
virtctl expose vm  hello-web --name=hello-web --type=ClusterIP --port=80 --target-port=80 
oc describe svc hello-web 
oc get epo
oc get ep
oc get ep -oyaml
oc get svc
oc get routes.route.openshift.io 
oc expose svc hello-web 
oc get route
curl hello-web-network-external.apps.ocp4.example.com
oc get route -oyaml
oc create route -h
oc create route edge -h
oc get route
oc create route  edge --service=hello-web 
oc create route  edge --service=hello-web  --dry-run=client 
oc create route edge -h
oc create route  edge hello-web-secure  --service=hello-web
oc get route
curl http://hello-web-secure-network-external.apps.ocp4.example.com
curl https://hello-web-secure-network-external.apps.ocp4.example.com
lab finish network-external
lab start network-lb
oc project metallb-system
oc get metallbs.metallb.io 
oc get ipaddresspools.metallb.io 
oc get l2advertisements.metallb.io 
ssh developer@192.168.50.22 -p 22000
ssh developer@192.168.50.22 -p 22000 -i .ssh/lab_rsa 
oc project network-lb 
oc get vm
virtctl migrate mariadb-server
ssh developer@192.168.50.22 -p 22000 -i .ssh/lab_rsa 
virtctl expose  vm mariadb-server --name=mariadb --type=LoadBalancer --port=3306 --target-port=3306 
oc get svc
oc get ep
mysql -h 192.168.50.24 -u devuser -p'developer' sakila
mysql -h 192.168.50.22 -u devuser -p'developer' sakila
mysql -h 192.168.50.23 -u devuser -p'developer' sakila
lab finish network-lb
lab start network-multihomed
oc project network-multihomed 
oc get vm
virtctl vnc rhel10-external
virtctl migrate rhel10-external
virtctl vnc rhel10-external
lab finish network-multihomed
lab start network-review
oc project network-review 
oc get vm
oc get vm -owude
oc get vm -owide
oc get vmi -owide
virtctl vnc rhel9-apache1
virtctl vnc rhel9-external
virtctl vnc rhel9-external &
virtctl vnc rhel9-isolated
oc get v,
oc get vm
oc project another-udn 
oc get v,
oc get vm
virtctl vnc rhel9-isolated
virtctl ssh rhel@rhel9-isolated -i .ssh/lab_rsa
oc project network-review 
oc describe vm rhel9-external 
virtctl vnc rhel9-external 
ssh developer@192.168.50.22 -p 22000
sh server.srv -J utility
ssh server.srv -J utility
lab grade network-review
ssh server.srv -J utility
lab grade network-review
oc get ep
oc describe svc mariadb 
oc edit vm rhel9-external 
oc get ep
virtctl restart rhel9-external
oc get ep
oc describe svc mariadb 
oc describe vm rhel9-external 
oc edit vm rhel9-external 
oc get ep
history | grep virtctl
lab finish network-review
lab start storage-intro
oc project storage-intro 
oc get all
virtctl vnc vm3
virtctl ssh  fred@vm3 -i .ssh/lab_rsa
virtctl vnc vm1
virtctl stop vm2
virtctl vnc vm2
lab finish storage-intro
lab start storage-multiple
lab finish storage-multiple
lab start storage-export
oc whoami o
oc login -u developer -p developer https://api.ocp4.example.com:6443
oc login -u system:admin https://api.ocp4.apps.example.com:6443
oc login -u admin -p redhat https://api.ocp4.apps.example.com:6443
oc login -u admin -p redhatocp https://api.apps.example.com:6443
oc login -u admin -p redhat https://api.ocp4.example.com:6443
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc login -u developer -p developer https://api.ocp4.example.com:6443
oc get oauth
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc get oauth
oc get oauth -oyaml
ping idm
ssh lab@utility
oc get no
oc debug node/master01
oc get sc
oc get volum
oc get volume
oc describe sc nfs-storage 
oc project storage-export
oc get all
virtctl vnc httpd-server
virtctl stop httpd-server
oc get datavolumes.cdi.kubevirt.io 
virtctl vmexport  download httpd-server --vm=httpd-server --volume=httpd-server-volume --output=httpd-server-pvc.img.gz
oc new-project backup-vm
virtctl image-upload 
virtctl image-upload httpd-server --size=10Gi  --storage-class ocs-external-storagecluster-ceph-rbd-virtualization --image-path=httpd-server-pvc.img.gz
virtctl image-upload dv httpd-server --size=10Gi  --storage-class ocs-external-storagecluster-ceph-rbd-virtualization --image-path=httpd-server-pvc.img.gz
virtctl create vm --name=httpd-server-backup--volume-pvc=src:httpd-server | oc apply -f -
virtctl create vm --name=httpd-server-backup --volume-pvc=src:httpd-server | oc apply -f -
oc get vm
virtctl  console httpd-server-backup
oc delete project backup-vm 
rm httpd-server-pvc.img.gz
lab finish storage-export
lab start storage-snapshot
virtctl  console vm1 -n storage-snapshot
virtctl  stop vm1 -n storage-snapshot
virtctl  console vm1 -n storage-snapshot
lab finish storage-snapshot
lab start storage-clone
lab finish storage-clone
lab start storage-review
lab finish storage-review
lab start auth-rbac
lab finish auth-rbac
oc get oauth -oyaml
oc get users
oc get idp
oc get identities.user.openshift.io 

oc project ramtops 
oc new-project  ubardwald
history | grep login
oc login -u verence-ii -p Atnorth3 https://api.ocp4.example.com:6443
oc login -u moist-ii -p Atnorth3 https://api.ocp4.example.com:6443
oc login -u moist -p Atnorth3 https://api.ocp4.example.com:6443
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc create rolebinding 
oc create rolebinding  admin --clusterrole=admin --user=moist -n ubardwald 
oc get rolebinding -n ubardwald 
oc describe rolebinding admin -n ubardwald 
oc adm policy add-cluster-role-to-user admin verence-ii -n ramtops 
oc adm policy add-cluster-role-to-user view moist -n ramtops 
oc adm policy add-cluster-role-to-user kubevirt.io:edit -n ramtops 
oc adm policy add-cluster-role-to-user kubevirt.io:edit moist -n ramtops 
oc adm policy add-cluster-role-to-user admin moist -n ubardwald 
dnf repolist
oc project ramtops 
oc get vm
virtctl ssh -i .ssh/lab_rsa.pub  verence-ii@lancre
oc get svc
oc get svc -oyaml
oc get svc -oyaml http.yaml
oc get svc -oyaml > http.yaml
vim .vimrc
vim http.yaml 
oc apply -f http.yaml
vim http.yaml 
oc apply -f http.yaml
vim http.yaml 
oc apply -f http.yaml
vim http.yaml 
oc apply -f http.yaml
oc get svc
oc get ep
oc delete -f http.yaml
oc get vm
oc get vm -oyaml
oc edit vm 
vim http.yaml 
oc apply -f http.yaml
oc get ep
oc project
virtctl stop lancre
virtctl start lancre
oc get ep
vim allow-lancre.yaml
oc get ns ramtops --show-labels 
podman images 
podman search ubi
podman pull registry.redhat.io/ubi9/ubi
podman pull docker.io/pluizetto/ubi
podman pull docker.io/pluizetto/ubi:latest
oc new-project test
virtctl ssh -i .ssh/lab_rsa moist/rhel9-test -n tets
virtctl ssh -i .ssh/lab_rsa moist/rhel9-test -n test
oc project test
oc get all
virtctl ssh -i .ssh/lab_rsa moist/rhel9-test0 -n test
virtctl ssh -i .ssh/lab_rsa rhel9-test0 -n test
virtctl ssh -i .ssh/lab_rsa.pub moist/rhel9-test0 -n test
virtctl -n test ssh moist@rhel9-test0 --identity-file=<path_to_sshkey>
virtctl -n test ssh moist@rhel9-test0 --identity-file=.ssh/lab_rsa.pub 
oc get ep
oc get netpol
oc edit networkpolicies.networking.k8s.io 
oc get netpol -oyaml
oc get netpol -oyaml > http.yaml 
oc edit networkpolicies.networking.k8s.io 
vim http.yaml 
oc get vm 
oc get vm  -oyaml 
oc get vm  -oyaml  | grep label
oc get vm  -oyaml  | grep label -A2
virtctl -n test ssh moist@rhel9-test0 --identity-file=.ssh/lab_rsa.pub 
vim http.yaml 
oc get po
oc edit  po virt-launcher-lancre-lk9n2 
vim allow-lancre.yaml 
oc apply  -f allow-lancre.yaml
vim allow-lancre.yaml
oc replace allow-lancre.yaml
oc replace -f allow-lancre.yaml
oc describe networkpolicies.networking.k8s.io  allow-ramtops-port-80 
oc delete  -f allow-ramtops-port-80
oc delete  -f allow-lancre.yaml 
vim allow-lancre.yaml
oc apply  -f allow-lancre.yaml
oc describe networkpolicies.networking.k8s.io  allow-lancre 
oc get svc
oc describe svc http 
virtctl -n ramtops ssh moist@rhel9-copper2 --identity-file=.ssh/lab_rsa.pub 
oc get ns
          oc get pods -n ramtops -l app=lancre -o wide --show-labels
oc get pods -n ramtops -l app=lancre -o wide --show-labels
oc get vm,vmi -n ramtops --show-labels
oc get pods -n ramtops -l kubevirt.io=virt-launcher --show-labels
oc get networkpolicy allow-lancre -n ramtops -o yaml
lab start oadp-operator
oc project openshift-adp 
oc get all
vim dpa.yaml
oc apply -f dpa.yaml
oc describe  dataprotectionapplications.oadp.openshift.io 
lab finish oadp-operator
lab start oadp-backup
oc explain  backup.spec
oc delete project ramtops 
oc project ramtops 
oc get all -n ramtops
watch oc get all -n ramtops
lab finish oadp-backup
oc get netpol
ll
vim allow-lancre.yaml 
vim oadp.yaml
vim allow-lancre.yaml 
oc replace  -f allow-lancre.yaml
vim allow-lancre.yaml 
oc replace  -f allow-lancre.yaml
oc project
oc apply -f allow-lancre.yaml
oc describe netpol
oc edit  networkpolicies.networking.k8s.io 
ll
vim oadp.yaml 
oc explin backup.spec
oc explain backup.spec
vim oadp.yaml 
oc apply -f oadp.yaml
vim oadp.yaml 
oc apply  -f oadp.yaml
vim oadp.yaml 
cat oadp.yaml
vim oadp.yaml 
oc apply -f oadp.yaml
oc get backups
oc get backups -A
oc describe backu -n openshift-adp  backup-lancre
oc describe backup -n openshift-adp  backup-lancre
oc project ramtops 
oc get netpol
oc delete project ramtops 
ls
im oadp.yaml 
vim oadp.yaml
oc explain  restore.spec
vim oadp.yaml 
watch oc get all -n ramtops
oc get secrets  -A
oc get secrets  -A | grep vm-
oc project openshift-adp 
oc get secrets  vm-backup 
oc get secrets  vm-backup  -oyaml
cat /etc/yum.repos.d/rhel_dvd.repo 
oc  project ramtops 
oc get all
oc get route
oc get sve
oc get svc
oc expose svc http --hostname=lancre.ocp4.example.com
ping lancre.ocp4.example.com
oc get ep
oc get route
oc delete routes.route.openshift.io  http 
oc expose svc http 
oc get route
ping http-ramtops.apps.ocp4.example.com
curl http-ramtops.apps.ocp4.example.com
oc delete networkpolicies.networking.k8s.io allow-lancre 
curl http-ramtops.apps.ocp4.example.com
history 
virtctl -n ramtops ssh verence-ii@lancre --identity-file=.ssh/lab_rsa.pub 
oc get svc
oc get svc http -n ramtops
oc get endpoints http -n ramtops
oc get endpointslice -n ramtops   -l kubernetes.io/service-name=http
oc delete svc http -n ramtops
> vim http.yaml 
vi http.yaml
oc apply  -f http.yaml
oc describe svc http 
curl -v http://http.ramtops.svc.cluster.local/service.html
oc get route 
curl http-ramtops.apps.ocp4.example.com
virtctl -n ramtops ssh verence-ii@lancre --identity-file=.ssh/lab_rsa.pub 
oc get po
virtctl -n ramtops ssh verence-ii@rhel9-copper2 --identity-file=.ssh/lab_rsa.pub 
virtctl -n ramtops ssh moist@rhel9-copper2 --identity-file=.ssh/lab_rsa.pub 
oc project test t
oc project test 
oc get vm
virtctl  ssh moist@rhel9-test0 --identity-file=.ssh/lab_rsa.pub
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc get all -n ubardwald 
ssh  lab@utility
oc project ubardwald 
oc get all
virtctl ssh -i .ssh/lab_rsa.pub  moist@lipwig
oc get all
virtctl vmexport download     rhel9-export     --volume=volume1     --output=rhel9.qcow2
virtctl vmexport download  lipwig     --volume=dv-lipwig-stage-disk1-202107-k5wnx7     --output=stage-disk1-202107.qcow2
vim stage-disk1-202107.yaml
oc apply  -f stage-disk1-202107.yaml
vim stage-disk1-202107.yaml
oc explain datavolume.spec.source.kind
oc explain datavolume.spec.source
vim stage-disk1-202107.yaml
oc apply  -f stage-disk1-202107.yaml
oc describe vm lipwig 
oc get pvc
sudo -i
cat /etc/yum.repos.d/rhel_dvd.repo 
oc get oath -oyaml
oc get oauth -oyaml
cat /etc/yum.repos.d/rhel_dvd.repo 
oc get dv -n ubardwald 
ll
sudo modprobe nbd max_part=8
sudo qemu-nbd --connect=/dev/nbd0 stage-disk1-202107.qcow2 
lsblk 
sudo mkfs.ext4 /dev/nbd0
sudo qemu-nbd --connect=/dev/nbd0 stage-disk1-202107.qcow2 
scp /home/student/Downloads/virtual-main/stage-disk1-202107.qcow2  lab@utility:
ssh lab@utility
vim stage-disk1-202107.yaml
oc project
oc apply  -f stage-disk1-202107.yaml
oc get dv
watch oc get dv
oc get events dv/stage-disk1-202107
oc get events
oc get events | grep dv
oc edit dv stage-disk1-202107 
ssh lab@utility
oc edit dv stage-disk1-202107 
oc delete -f stage-disk1-202107.yaml 
oc apply -f stage-disk1-202107.yaml
watch oc get dv
virtctl ssh -i .ssh/lab_rsa.pub  moist@lipwig
ll
scp /home/student/Downloads/virtual-main/stage-disk1-202107.qcow2  lab@utility:
ssh lab@utility
oc delete -f stage-disk1-202107.yaml 
oc get dv
oc delete dv dv-lipwig-stage-disk1-202107-k5wnx7 
oc apply -f stage-disk1-202107.yaml
watch oc get dv
ssh lab@utility
virtctl ssh -i .ssh/lab_rsa.pub  moist@lipwig
oc get sc
oc whoami o
oc whoami 
oc new-project  lonely
oc get dv -A
virtctl create 
vim doril-dv.yaml
oc pro
oc project
oc apply  -f doril-dv.yaml 
watch oc get dv
virtctl  ssh -i .ssh/lab_rsa.pub gandalf@dwalin 
oc project
oc edit template disorurl 
cat /tmp/oc-edit-317627515.yaml
oc edit template disorurl 
ssh lab@utility
oc edit template disorurl 
oc delete vm vm1 
virtctl  ssh -i .ssh/lab_rsa.pub ferni@vm1
oc get vm
virtctl  ssh -i .ssh/lab_rsa.pub ferni@vm1
oc edit template disorurl 
oc delete vm vm1 
oc get vm
virtctl  ssh -i .ssh/lab_rsa.pub ferni@vm1
oc get template -oyaml | grep runcmd
oc get template -oyaml | grep runcmd -A5
virtctl  ssh -i .ssh/lab_rsa.pub ferni@vm1
oc delete vm vm1 
oc edit template disorurl 
virtctl  ssh -i .ssh/lab_rsa.pub ferni@vm1
oc delete vm vm1 
oc edit template disorurl 
cat .ssh/lab_rsa.pub 
oc edit template disorurl 
vim disorurl-dv.yaml 
oc get dv
cat ~/Downloads/
cat ~/Downloads/k8s-object.yaml 
cat ~/Downloads/k8s-object.yaml  -n
vim ~/Downloads/k8s-object.yaml
exit
