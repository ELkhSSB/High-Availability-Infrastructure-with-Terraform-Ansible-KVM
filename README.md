# High Availability Infrastructure with Terraform, Ansible & KVM

## 📌 Description
Ce projet implémente une infrastructure **haute disponibilité (HA)** en utilisant :

- **Terraform** pour le provisionnement de l’infrastructure (IaC)
- **Ansible** pour la configuration et l’orchestration
- **KVM / Libvirt** pour la virtualisation

La configuration des machines est entièrement gérée par **Ansible**, sans cloud-init.

---

## 🏗 Architecture
- 1 Load Balancer
- 2 Web Servers
- Réseau privé KVM
- Accès SSH automatisé

---

## ⚙️ Technologies utilisées
- Terraform
- Ansible
- KVM / Libvirt
- Linux (Ubuntu)

---

## 🚀 Déploiement

### 1️⃣ Création des VM avec Terraform
```bash
cd terraform
terraform init
terraform apply
