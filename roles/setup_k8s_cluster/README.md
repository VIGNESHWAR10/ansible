Setup Kubernetes Cluster (Manual)
=========

Role used to create Kubernetes Cluster of using 5 EC2 instances

<h2>Cluster Details:</h2>
<h4><b>Cluster Name</b>: kubernetes</h4>
<h4>Node Info:</h4>
  <table>
    <thead>
      <tr>
        <th>Node Type</th>
        <th>Node Names</th>
        <th>Count</th>
      </tr>
    </thead>
    <tbody>
        <tr>
            <td><b>Master</b></td>
              <td>
                kube-master-1,
                kube-master-2
              </td>
            <td>2</td>
        </tr>
        <tr>
            <td><b>Worker</b></td>
              <td>
                kube-worker-1,
                kube-worker-2
              </td>
            <td>2</td>
        </tr>
        <tr>
            <td><b>LoadBalancer</b></td>
              <td>
                kube-loadbalancer
              </td>
            <td>1</td>
        </tr>
    </tbody>
  </table>
  </b><h4>Component details:</h4></b>
  <table>
    <thead>
      <tr>
        <th>Component</th>
        <th>Version</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><b>etcd</b></td>
        <td>v3.5.14</td>
      </tr>
      <tr>
        <td><b>kube-apiserver</b></td>
        <td>v1.30.2</td>
      </tr>
      <tr>
        <td><b>kube-controller-manager</b></td>
        <td>v1.30.2</td>
      </tr>
      <tr>
        <td><b>kube-scheduler</b></td>
        <td>v1.30.2</td>
      </tr>
      <tr>
        <td><b>kube-proxy</b></td>
        <td>v1.30.2</td>
      </tr>
      <tr>
        <td><b>kubelet</b></td>
        <td>v1.30.2</td>
      </tr>
      <tr>
        <td><b>kubectl</b></td>
        <td>v1.30.2</td>
      </tr>
      <tr>
        <td><b>weaveworks network</b></td>
        <td>v2.8.1</td>
      </tr>
      <tr>
        <td><b>coredns</b></td>
        <td>latest (currently - v1.9.4)</td>
      </tr>
      <tr>
        <td><b>HA-Proxy</b></td>
        <td>latest (currently -v2.8.3)</td>
      </tr>
    </tbody>
  </table>

Role Variables
--------------

All variables that can be overriden are specified in [kuberenetes_cluster.yml](../../vars/kubernetes_cluster.yml).

<b>ATTENTION!</b>
* Do check and modify the cluster version as per your needs
* Additional nodes can be specified, but the tag values should remain same.

Example Playbook
----------------
    - hosts: servers
      roles:
         - setup_k8s_cluster

Existing Playbook Execution:
------------------
  * To run playbook: 
  `ansible-playbook playbooks/launch_k8s_cluster.yml`
  * To run without installing falcon-agent:
  `ansible-playbook playbooks/launch_k8s_cluster.yml --skip-tags falcon`