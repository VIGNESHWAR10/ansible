upgrade_kubeadm_cluster
=========

Role to upgrade kubernetes cluster using kubeadm with WeaveNet as CNI and metrics-server configured.

Role is developed for single master and multiple worker nodes setup and nodes are RHEL based.

Role upgrades the nodes to the next available major version.

Requirements
------------

<b>kubernetes_existing_version:</b> Kubernetes Version already deployed in the cluster (default: v1.29)<br> <b>cluster_name:</b> Kubernetes cluster name (default: kubernetes). Should be set in the EC2 instance tags.

Dependencies
------------

This role expects certain tags to be available in the EC2 instances
<table>
  <tr>
    <td><b>Tags</b></td>
    <td><b>Description</b></td>
  </tr>
  <tr>
    <td><b>Role</b><br>
    (values cannot be changed)
    </td>
    <td>
    <b>master</b> - for control-plane nodes<br>
    <b>worker</b> - for worker nodes
    </td>
  </tr>
  <tr>
    <td><b>Cluster</b></td>
    <td>Any name</td>
  </tr>
</table>

Example Playbook
----------------
```
name: Upgrade Kubernetes Cluster using kubeadm
  hosts: tag_Cluster_{{ cluster_name }}
  gather_facts: true
  roles:
    - role: roles/upgrade_kubeadm_cluster
```

Complete playbook for launching EC2 instances (RHEL) and setting up kubernetes cluster using kubeadm can be found [here](../../playbooks/upgrade_k8s-cluster_kubeadm.yml).