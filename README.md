
---

# 🚀 Automated CI/CD Pipeline Using Jenkins & Terraform on Google Cloud Platform (GCP)

This repository provides a complete implementation of an automated **Continuous Integration and Continuous Deployment (CI/CD)** pipeline using **Jenkins** and **Terraform** on **Google Cloud Platform (GCP)**. The pipeline is automatically triggered when changes occur in a **private GitHub repository**, enabling seamless provisioning and updates to cloud infrastructure.

---

## 📌 Project Overview

This project demonstrates how to automate GCP infrastructure deployment by integrating **Jenkins** for pipeline orchestration and **Terraform** for Infrastructure as Code (IaC). The pipeline monitors a private GitHub repository and automatically applies Terraform changes to provision or update GCP resources.

🎥 **Video Tutorial**
[![YouTube](https://img.shields.io/badge/YouTube-Video-green)](https://youtu.be/14x4XwEwiDs)

---

## ✨ Key Features

* 🔄 Fully automated CI/CD pipeline for infrastructure deployment
* ☁️ Infrastructure provisioning on **Google Cloud Platform**
* 🧰 Uses **Terraform** to manage resources as code
* 🧱 **Jenkins Pipeline (Jenkinsfile)** for build & deployment orchestration
* 🔐 Integrated with a **private GitHub repository**
* 🔔 Automatic build triggers on commit via **GitHub Webhooks**

---

## 🛠️ Architecture Diagram

```
GitHub (Private Repo)
        |
     Webhook
        |
    Jenkins (Pipeline)
        |
     Terraform Apply
        |
  Provision Resources on GCP
```

---

## ⚙️ Setup Instructions

Follow the steps below to replicate this CI/CD pipeline:

### 1️⃣ Deploy Jenkins on GCP

* Use *Click-to-Deploy Jenkins* from GCP Marketplace
* Configure admin credentials and required plugins

### 2️⃣ Create a Private GitHub Repository

* Store Terraform configuration files
* Store Jenkinsfile for pipeline stages

### 3️⃣ Add Terraform Configuration Files

* Define required GCP resources (Compute Engine, VPC, Storage, etc.)
* Example: `main.tf`, `variables.tf`, `provider.tf`

### 4️⃣ Create a `Jenkinsfile`

* Define pipeline stages:

  * Checkout
  * Terraform Init
  * Terraform Plan
  * Terraform Apply

### 5️⃣ Configure Jenkins Pipeline Job

* Create a Pipeline job in Jenkins
* Add GitHub repository URL & credentials

### 6️⃣ Connect GitHub Webhook

* Add webhook under: **Repo Settings → Webhooks**
* URL: `http://<your-jenkins-server>/github-webhook/`
* Event: `Push`

### 7️⃣ Test Execution

* Commit a change to the repository to verify auto-triggering

---

## 🚀 Usage Instructions

```bash
git clone https://github.com/vishal-bulbule/gcp-tf-jenkin.git
```

* Modify Terraform files and variables as needed
* Update Jenkinsfile with your environment-specific configuration
* Push changes to trigger the CI/CD pipeline

---

## 📂 Repository Structure

```
├── Jenkinsfile
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
```

---

## 📄 Requirements

| Tool                | Version                 |
| ------------------- | ----------------------- |
| Jenkins             | Latest LTS              |
| Terraform           | ≥ 1.0                   |
| Google Cloud SDK    | Optional                |
| GitHub              | Private repo access     |
| Service Account Key | With required IAM roles |

---

## 🤝 Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue.

---

## 📧 Contact

For queries or improvements:
**Author:** Vishal Bulbule
**GitHub:** [vishal-bulbule](https://github.com/vishal-bulbule)

---

## ⭐ Support

If you found this helpful, please **star** ⭐ the repository!

---

