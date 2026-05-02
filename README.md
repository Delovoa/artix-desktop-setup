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

