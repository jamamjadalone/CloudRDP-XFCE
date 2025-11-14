# 🔥 CloudRDP-XFCE: Guaranteed Working Cloud Shell GUI

A simple, reliable, and fully tested setup that installs the **XFCE Desktop Environment**, **Google Chrome**, and **Chrome Remote Desktop (CRD) Host**—optimized specifically to run inside **Google Cloud Shell** without crashing.

This configuration is proven for stability in restrictive cloud environments and ensures consistent remote desktop access.

---

## ✨ Features

- ✅ **One-Command Installation** — Fully automated setup
- ✅ **100% Cloud Shell Compatible** — Uses a special XFCE config tested for stability
- ✅ **Lightweight XFCE Desktop** — Perfect for temp cloud machines
- ✅ **Includes Google Chrome** — Full browser pre-installed
- ✅ **Chrome Remote Desktop Integrated** — Works instantly after authorization
- ✅ **Clean, Stable Setup** — Fixes common CRD session issues
- ✅ **Simple PIN-Based Login** — No advanced settings needed
- ✓ **Zero Manual Config Required** — Just run, authorize, connect!

---

## 💻 System Requirements

| Requirement | Specification |
|------------|--------------|
| **OS** | Debian 10+, Ubuntu 18.04+, Google Cloud Shell |
| **Architecture** | x86_64 (64-bit) |
| **Disk Space** | Minimum 5GB free |
| **RAM** | 1GB minimum (2GB+ recommended) |
| **Privileges** | Root or sudo access |

---

## 📖 Installation Steps

### **Step 1: Download & Install (One Command)**

Paste this into your terminal:

```bash
wget https://raw.githubusercontent.com/jamamjadalone/CloudRDP-XFCE/main/install.sh && chmod +x install.sh && ./install.sh
```

The script will automatically:
- Update packages
- Install XFCE Desktop
- Install Chrome Remote Desktop Host
- Install Google Chrome
- Configure the XFCE session
- Show **Setup Complete** when done

⏱️ **Takes 3–5 minutes on average.**

---

### **Step 2: Authorize Chrome Remote Desktop (REQUIRED)**
This links your machine to your Google Account.

#### Follow this process:

1. Open the CRD setup page:  
   👉 https://remotedesktop.google.com/headless

2. Select the **Linux** tab

3. Click **Begin** → **Next** → **Authorize**

4. Copy the full command shown (starts with):
   ```bash
   DISPLAY= /opt/google/chrome-remote-desktop --code=...
   ```

5. Paste the command into your terminal

6. Set a **6-digit PIN** when asked

7. Done!  
   Your machine will appear **Online** here:  
   👉 https://remotedesktop.google.com/access

---

## 🤝 Contributing

We welcome improvements! Open an issue or submit a pull request if you'd like to enhance the script.

If reporting a bug, include:
- OS used (e.g., Google Cloud Shell)
- Installation steps performed
- Error logs or screenshots

---

## 📄 License

This project is licensed under the **MIT License**—see the [LICENSE](LICENSE) file for full details.

You are free to use, modify, and distribute this project for personal and commercial use.


---

## 👨‍💻 Author

**Created by:** [jamamjadalone](https://github.com/jamamjadalone)  
**Last Updated:** 2025-11-14

---

## ⭐ Show Your Support

If this project helped you:
- ⭐ Star this repository
- 🔄 Share it with others
- 💬 Leave feedback or suggestions

---

**Made with ❤️ for easy remote desktop access on the cloud**
