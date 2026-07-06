# Kubernetes Administration Bootcamp (5 Days)

Welcome to the **Kubernetes Administration Bootcamp** repository.

This repository contains all the labs, exercises, YAML manifests, scripts, and supporting material used during the 5-day hands-on Kubernetes training.

---

## Training Objectives

By the end of this training, you will be able to:

- Understand Kubernetes architecture
- Deploy and manage applications
- Work with Pods, Deployments, ReplicaSets, and Services
- Configure networking and storage
- Troubleshoot Kubernetes clusters
- Prepare for the Certified Kubernetes Administrator (CKA) exam

---

# Course Schedule

## Day 1 – Kubernetes Fundamentals

Topics

- Kubernetes Architecture
- Control Plane Components
- Worker Node Components
- kubectl
- Pods
- Namespaces
- Labels & Selectors

Labs

- Create Pods
- Inspect Pods
- Multi-container Pods
- YAML Basics
- kubectl Commands

---

## Day 2 – Workloads

Topics

- ReplicaSets
- Deployments
- Rolling Updates
- Rollbacks
- DaemonSets
- StatefulSets
- Jobs
- CronJobs

Labs

- Create Deployments
- Scale Applications
- Rolling Updates
- Rollbacks

---

## Day 3 – Networking

Topics

- Services
- ClusterIP
- NodePort
- LoadBalancer
- Ingress
- DNS
- Network Policies

Labs

- Expose Applications
- Configure Services
- Ingress Controller
- Network Policies

---

## Day 4 – Storage & Configuration

Topics

- Volumes
- Persistent Volumes
- Persistent Volume Claims
- Storage Classes
- ConfigMaps
- Secrets

Labs

- Persistent Storage
- ConfigMaps
- Secrets
- Dynamic Provisioning

---

## Day 5 – Administration & Troubleshooting

Topics

- RBAC
- Service Accounts
- Security Contexts
- Scheduling
- Taints & Tolerations
- Node Affinity
- Cluster Troubleshooting
- CKA Practice

Labs

- RBAC
- Scheduling
- Troubleshooting Scenarios
- Mock CKA Exercises

---

# Repository Structure

```
.
├── labs
│   ├── day01
│   ├── day02
│   ├── day03
│   ├── day04
│   └── day05
│
├── scripts
│
├── diagrams
│
├── solutions
│
└── README.md
```

---

# Prerequisites

- Basic Linux knowledge
- Docker fundamentals
- Laptop with Internet access
- kubectl installed

---

# Useful Commands

```bash
kubectl get pods
kubectl get nodes
kubectl get deployments
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl exec -it <pod-name> -- bash
```

---

# Recommended Practice

Complete every lab before moving to the next day.

Practice all YAML files from scratch without copying them.

Repeat the troubleshooting labs multiple times.

---

# Instructor

**Ismail AIT ZAID**

DevOps | Kubernetes | OpenShift | Platform Engineering

---

Happy Learning!
