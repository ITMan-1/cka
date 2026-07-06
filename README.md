# Kubernetes — 5-Day Professional Training

A 5-day, instructor-led course (6 hours/day — 30 hours total) that takes IT professionals from the history of infrastructure (physical servers → virtual machines → containers) all the way to running Kubernetes in a highly available, production-grade setup.

**Trainer:** Ismail Azid
**Audience:** IT people new to containers and Kubernetes
**Format:** Theory in the morning, hands-on labs in the afternoon

## Course Outline

| Day | Focus | Key Topics |
|-----|-------|------------|
| **1** | History & Foundations | Physical servers → Virtual Machines → Containers → why Kubernetes was born; advantages/disadvantages at each step |
| **2** | Architecture & Core Objects | Control plane vs. worker nodes, Pods, ReplicaSets, Deployments, Namespaces — **Lab: install a cluster (1 master + 2 workers)** |
| **3** | Networking & Storage | Services (ClusterIP/NodePort/LoadBalancer), Ingress, Volumes, PV/PVC, ConfigMaps, Secrets, StatefulSets |
| **4** | Operations at Scale | Helm, RBAC, resource requests/limits, Horizontal Pod Autoscaler, liveness/readiness probes, monitoring & logging |
| **5** | Production & High Availability | HA control plane (**3 masters**), external **load balancer**, worker pool, etcd quorum, backup/DR, capstone lab |

Each day ends with a hands-on lab; Day 5 closes with a capstone exercise that builds the full production topology (3 masters + load balancer + workers).

## Prerequisites

- Basic Linux command-line skills
- Basic understanding of networking (IP, DNS, ports)
- A laptop capable of running 3–4 VMs or containers locally (8 GB RAM minimum, 16 GB recommended)

## Lab Environment

| Stage | Setup |
|-------|-------|
| Days 2–4 | 1 master node + 2 worker nodes (kind / minikube / kubeadm) |
| Day 5 (capstone) | 3 master nodes + 1 load balancer + worker nodes (HA topology) |

**Tools used:** Docker, kubectl, kubeadm / kind / minikube, Helm, a load balancer (HAProxy or cloud LB), Prometheus & Grafana (intro only)

## Repository Structure

<img width="466" height="211" alt="image" src="https://github.com/user-attachments/assets/0873142b-06a1-495b-a109-cb50bf8b782c" />

## Contact

Questions about this training: **Ismail Azid**
