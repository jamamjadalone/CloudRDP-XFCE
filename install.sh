#!/bin/bash

# --- RDP-Shell-XFCE: Working Cloud Shell Setup Script ---

# 1. Update package lists
sudo apt update -y

# 2. Download and install the Chrome Remote Desktop Host package
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install -y ./chrome-remote-desktop_current_amd64.deb

# 3. Install XFCE Desktop, X-components, and screensaver (Key to your working setup)
sudo DEBIAN_FRONTEND=noninteractive apt install -y xfce4 desktop-base dbus-x11 xscreensaver

# 4. Configure CRD to launch the XFCE session (CRITICAL STEP)
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

# 5. Install Google Chrome Browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# 7. Clean up downloaded files
rm chrome-remote-desktop_current_amd64.deb google-chrome-stable_current_amd64.deb

# --- Setup Complete ---
echo "========================================================================"
echo "XFCE Desktop, CRD Host, and Chrome installed successfully!"
echo "NEXT STEP IS CRITICAL: YOU MUST RUN THE MANUAL AUTHORIZATION COMMAND."
echo "Visit: https://remotedesktop.google.com/headless"
echo "========================================================================"
