# Managing Deployments Using Kubernetes Engine (GSP053)

## ⚠️ Disclaimer
This repository and script are provided **strictly for educational purposes** to help learners
understand Google Cloud Skills Boost labs and Kubernetes deployment strategies.

Before executing any script:
- Carefully **review the script contents**
- Ensure you understand the **Google Cloud services** being used
- Follow **Qwiklabs / Google Cloud Skills Boost Terms of Service**
- Respect **platform learning guidelines**

The intent of this repository is to **enhance learning**, not to bypass or misuse lab environments.

---

## © Credit & Attribution
All rights and credits for the original lab content belong to:

- **Google Cloud**
- **Google Cloud Skills Boost**

This repository only provides **learning notes and automation references**.
No copyright infringement is intended.

If you are the content owner and want **credit update or removal**, please contact.

---

## 📘 Lab Overview
This lab demonstrates how to manage application deployments on
**Google Kubernetes Engine (GKE)** using real-world DevOps deployment strategies such as:

- Rolling Updates
- Canary Deployments
- Blue-Green Deployments
- Scaling Kubernetes applications

The lab uses a sample application (**fortune-app**) to showcase
production-style deployment workflows.

---

## 📂 Repository Contents

| File | Description |
|----|----|
| `gsp053.sh` | Automation script for base lab setup |
| `Managing Deployments Using Kubernetes Engine.md` | Lab documentation and notes |

---

## ▶️ Run the Script (Cloud Shell)

Execute the following commands in **Google Cloud Shell**:

```bash
curl -LO https://raw.githubusercontent.com/starloardgaurav/GoogleCloud/main/GSP053/gsp053.sh
chmod +x gsp053.sh
./gsp053.sh
