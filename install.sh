#!/bin/bash
# -----------------------------------------------------------------------------
# CloudRDP-XFCE: Cloud Shell RDP Setup Script (XFCE)
# This script installs XFCE, Chrome Remote Desktop Host, and Google Chrome.
# -----------------------------------------------------------------------------

# 1. Update package lists
echo "--- 1/7: Updating package lists ---"
sudo apt update -y

# 2. Download and install the Chrome Remote Desktop Host package
echo "--- 2/7: Installing Chrome Remote Desktop Host ---"
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install -y ./chrome-remote-desktop_current_amd64.deb

# 3. Install XFCE Desktop, X-components, and screensaver (Proven configuration)
echo "--- 3/7: Installing XFCE Desktop Environment ---"
sudo DEBIAN_FRONTEND=noninteractive apt install -y xfce4 desktop-base dbus-x11 xscreensaver

# 4. Configure CRD to launch the XFCE session (CRITICAL STEP)
echo "--- 4/7: Configuring Chrome Remote Desktop Session ---"
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

# 5. Install Google Chrome Browser
echo "--- 5/7: Installing Google Chrome Browser ---"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# 6. Fix any dependency issues after dpkg installs
echo "--- 6/7: Fixing dependencies ---"
sudo apt install -y --fix-broken

# 7. Clean up downloaded files
echo "--- 7/7: Cleaning up files ---"
rm chrome-remote-desktop_current_amd64.deb google-chrome-stable_current_amd64.deb

# --- Setup Complete ---
echo "========================================================================"
echo "✅ XFCE Desktop, CRD Host, and Chrome installed successfully!"
echo "➡️ NEXT STEP IS CRITICAL: YOU MUST RUN THE MANUAL AUTHORIZATION COMMAND."
echo "See the README or visit: https://remotedesktop.google.com/headless"
echo "========================================================================"
