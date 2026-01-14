# Managing Deployments Using Kubernetes Engine (GSP053)

## Overview
This lab demonstrates how to manage and deploy containerized applications
on **Google Kubernetes Engine (GKE)** using Kubernetes deployment strategies.

It focuses on real-world DevOps practices such as:
- Scaling
- Rolling updates
- Canary deployments
- Blue-Green deployments

The lab uses a sample application called **fortune-app** to showcase how
Kubernetes manages application lifecycle in production environments.

---

## Objectives
After completing this lab, you will be able to:

- Use `kubectl` to manage Kubernetes resources
- Create and manage Kubernetes Deployment objects
- Scale applications using replicas
- Perform rolling updates and rollbacks
- Implement Canary and Blue-Green deployment strategies
- Understand service-based traffic routing in Kubernetes

---

## Prerequisites
- Basic Linux command-line knowledge
- Understanding of Docker and containers
- Basic Kubernetes concepts
- Google Cloud lab credentials

---

## Lab Architecture
- **Platform:** Google Kubernetes Engine (GKE)
- **Cluster:** 3-node cluster
- **Application:** fortune-app
- **Service Type:** LoadBalancer
- **Deployment Strategies:** Rolling, Canary, Blue-Green

---

## Key Kubernetes Concepts

### Deployment
A Deployment ensures that the specified number of pod replicas
are always running.

### ReplicaSet
ReplicaSet is automatically created by a Deployment to maintain
the desired number of Pods.

### Service
A Service exposes the application and load-balances traffic
across multiple Pods.

---

## Deployment Workflow

### 1. Create GKE Cluster
A three-node GKE cluster is created to simulate a production setup.

### 2. Blue Deployment (Stable Version)
The initial deployment runs version **1.0.0** of the application
and serves as the stable production version.

### 3. Scaling the Deployment
The deployment is scaled up and down using replicas to demonstrate
horizontal scaling.

### 4. Rolling Update
The application is updated from version **1.0.0** to **2.0.0**
using Kubernetes rolling updates without downtime.

### 5. Rollback
If issues are detected, Kubernetes allows rollback to the
previous stable version.

---

## Canary Deployment
Canary deployment releases a new version to a **small percentage of users**.

- Two deployments run together:
  - Stable version (v1.0.0)
  - Canary version (v2.0.0)
- Traffic is distributed automatically by the Service
- Helps validate new releases with minimal risk

---

## Blue-Green Deployment
Blue-Green deployment maintains two environments:

- **Blue:** Current stable version
- **Green:** New version

Traffic is switched instantly by updating the Service selector.
Rollback is immediate by redirecting traffic back to Blue.

---

## Automation Script

This lab includes an automation script:

