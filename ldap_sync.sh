#!/bin/bash
oc login -u sdxmwadm -p Xr8Ey5mm
export KUBECONFIG=/root/openshift/installation/acptst/auth/kubeconfig
oc adm groups sync --whitelist=/root/openshift/confs/ldap/group_sync_whitelist.txt  --sync-config=/root/openshift/confs/ldap/ldap_group_sync.yaml --confirm
