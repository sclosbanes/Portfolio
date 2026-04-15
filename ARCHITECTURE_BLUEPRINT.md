# Sidney's Automated Architecture: The Infrastructure Blueprint

This document explains the "under-the-hood" connection between your **Mac**, your **GitHub account**, and your **Remote Production VM**.

## 1. The Architectural Flow (Visualized)

```mermaid
graph TD
    A["💻 Local (Mac)"] -- "git push origin main" --> B["🔒 GitHub (PRIVATE REPO)"]
    
    subgraph "🔐 GitHub Secure Hub"
        B -- "Triggers" --> C["🤖 GitHub Actions (Workflow)"]
        D["🔑 Vault (Secrets)"] -- "Provides IP/PSW" --> C
    end
    
    C -- "Secure SSH Connection" --> E["☁️ Production VM (IP: 51.254.130.211)"]
    
    subgraph "🐳 Cloud Production VM"
        E -- "1. Sync Code" --> F["📁 ~/portfolio"]
        F -- "2. Docker Build" --> G["🚀 sidney-app (Port: 8099)"]
        G -- "3. Nginx Gateway" --> H["🌐 https://sidney.archsystems.online"]
    end
```

---

## 2. Summary of Component Connections

| Component | Responsibility | Privacy Status |
| :--- | :--- | :--- |
| **Local (Mac)** | Where you edit your HTML, CSS, and Content. | **Local Only** |
| **GitHub Repo** | Stores your file history and acts as the "Source of Truth." | **PRIVATE** (Only YOU see it) |
| **GitHub Secrets** | Stores your VM's Password and IP address. | **ENCRYPTED** (Invisible to everyone) |
| **GitHub Actions** | The "Robot" that logs into your VM to perform the update. | **PRIVATE** |
| **Docker Engine** | Packages your resume so it runs the same on any server. | **REMOTE VM** |
| **Nginx (VM)** | The "Security Guard" that routes your domain to the Docker container. | **REMOTE VM** |

---

## 3. The "Secret" to Security (ZERO-LEAK)
The most important part of this architecture is that **none of your sensitive data** (IP, Password, SSH keys) is stored in the repository files.

- Your **`index.html`** is public on the web.
- Your **Deployment logic** is private on GitHub.
- Your **Infrastructure credentials** are locked in the GitHub Vault (Secrets).

### **How to Trigger an Update:**
Simply run these commands in your `SCLOSBANES` folder:
1. `git add .`
2. `git commit -m "Update Experience"`
3. `git push origin main`

**System Status: Architect-Verified | 100% Secure | Live at Sidney.Archsystems.Online**
