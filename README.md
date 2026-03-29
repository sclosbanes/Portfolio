# Sidney Losbañes | Executive Infrastructure Portfolio

This repository contains the source code and automation logic for the **Senior Infrastructure & AI Systems Architect** professional portal.

## 🚀 The Automated Infrastructure
This project is connected via **GitHub Actions** to a remote production VM. 

### **The Workflow:**
1. **Local (Mac)**: Develop and review your resume changes.
2. **Push**: Run `git push origin main`.
3. **Deploy (Remote)**: GitHub Actions securely connects to the VM, rebuilds the **Docker Nginx container**, and refreshes the live portal at [https://sidney.archsystems.online](https://sidney.archsystems.online).

## 🔒 Security Configuration
- **Host details**, **SSH Keys**, and **Passwords** are stored exclusively in **GitHub Secrets**.
- **The code itself contains zero sensitive information.**

## 🛠 Tech Stack
- **Frontend**: HTML5, Vanilla CSS (Glassmorphism), Magnetic UI Interactions.
- **Backend**: Dockerized Nginx Alpine.
- **Delivery**: Cloudflare DNS + Nginx Reverse Proxy with Certbot SSL.

---
**Architected by Sidney & AI | 2026**
