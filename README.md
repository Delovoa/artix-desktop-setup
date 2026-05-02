# Setting Up an Desktop PC using Artix Linux

A highly opinionated, reproducible, beginner-friendly **Artix Linux desktop setup** using **KDE Plasma**, **OpenRC**, and **Btrfs snapshots**.

## 🧰 What You’ll Get

* ⚙️ Artix Linux (rolling release to get the latest updates)
* 🖥️ KDE Plasma desktop (for full HDR support)
* 🔌 OpenRC init system (systemd-free, no age verification)
* 💾 Btrfs filesystem (easy rollback and recovery in case anything breaks) 
* 🔁 Safe update script 

---

## ⚠️ Disclaimer

This guide assumes basic familiarity with Linux.
You are responsible for your system.
Review each step before executing any commands.

---

## 📦 1. Download Artix Linux

1. Go to the official Artix download webpage: [https://torrents.artixlinux.org/torrents.php](https://torrents.artixlinux.org/torrents.php)
2. Download the Plasma/OpenRC ISO

> [!TIP]
> The file should be named: artix-plasma-openrc-XXXXXXXX-x86_64.iso

---

## 💿 2. Create Bootable USB

Burn the ISO to a USB thub drive.

> [!TIP]
> I recommend using Balena Etcher.

---

## 🚀 3. Boot and Start Installer

1. Boot from the USB
2. Launch the installer
3. Follow prompts until partitioning

---

## 💽 4. Partitioning Btrfs

When you reach partitioning, choose **Btrfs** (not ext4)

---

## ⚙️ 5. Complete Installation

Finish the installer, reboot, and log in

---

## 🔁 6. Clone This Repo

Open a terminal and run the following commands:

```bash
cd ~
mkdir Code
cd ~/Code
sudo pacman -Syu
sudo pacman -S --needed base-devel git
git clone https://github.com/Delovoa/artix-desktop-setup
cd artix-desktop-setup
```

---

