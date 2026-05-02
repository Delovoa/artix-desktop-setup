# Setting Up an Desktop PC using Artix Linux

A reproducible, beginner-friendly **Artix Linux desktop setup** using **KDE Plasma**, **OpenRC**, and **Btrfs snapshots**.

This repository is designed to help you:

* Install a clean Artix system
* Set up a modern desktop
* Enable Btrfs snapshots for easy rollback
* Reproduce the same system later with minimal effort

---

## ⚠️ Disclaimer

This guide assumes basic familiarity with Linux.
You are responsible for your system.
Read each step before executing commands.

---

## 🧰 What You’ll Get

* ⚙️ Minimal, clean Artix base
* 🖥️ KDE Plasma desktop
* 🔌 OpenRC init system
* 💾 Btrfs filesystem
* 🔁 Reproducible setup via scripts and configs

---

## 📦 1. Download Artix Linux

Go to the official Artix download webpage:
  https://torrents.artixlinux.org/torrents.php

Download the Plasma/OpenRC ISO:
  It should be named "artix-plasma-openrc-XXXXXXXX-x86_64.iso"

---

## 💿 2. Create Bootable USB

Burn the ISO to a USB thub drive.

> I recommend using Balena Etcher.

---

## 🚀 3. Boot and Start Installer

1. Boot from the USB
2. Launch the installer
3. Follow prompts until partitioning

---

## 💽 4. Partitioning Btrfs

When you reach partitioning:

### Choose Btrfs

---

## ⚙️ 5. Complete Installation

Finish the installer

---

## 🔁 6. Clone This Repo

```bash
git clone https://github.com/YOUR_USERNAME/artix-desktop-setup.git
cd artix-desktop-setup
```

---

Happy hacking 🚀
