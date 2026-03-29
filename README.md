# Sidney Losbañes | Executive Infrastructure Portfolio 🚀

This repository contains the source code and automation logic for the **Senior Infrastructure & AI Systems Architect** professional portal.

---

## 🏛 The Global Infrastructure
This project is powered by a **Continuous Deployment (CI/CD)** pipeline that bridges your Mac to the Cloud.

### **The Lifecycle:**
1. **Local (Mac)**: Modify your resume, portfolio, or landing page.
2. **Push**: Use `git push origin main`.
3. **GitHub Action**: A secure "Robot" (Action) is triggered to:
    - Log into the Production VM (`51.254.130.211`).
    - Sync the fresh files.
    - Rebuild the **Docker Nginx Container**.
    - Refresh the live portal at [https://sidney.archsystems.online](https://sidney.archsystems.online).

---

## 🔒 Security Configuration (Zero-Leak)
- **Host details**, **SSH Keys**, and **Passwords** are stored exclusively in **GitHub Secrets**.
- The code itself is public-ready, with all sensitive data kept in an encrypted vault.

## 📁 Repository Structure
- `index.html`: The interactive landing page.
- `portfolio.html`: Detailed project showcases.
- `resume.html`: Career summary.
- `.github/workflows/`: The automation logic for the Cloud deployment.
- `Dockerfile`: The Nginx container configuration.

---
**Architected by Sidney & AI | 2026**
