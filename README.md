# Setting Up an Desktop PC using Artix Linux

A highly opinionated, reproducible, beginner-friendly Artix Linux desktop setup.

## What You’ll Get

* **Artix Linux** (Rolling release disto = Latest drivers and application)
* **KDE Plasma** desktop (Wayland + Plasma = Best HDR support)
* **OpenRC** init system (No systemd = No age verification)
* **Btrfs** filesystem (Snapshots = Easy rollback if something breaks)

---

## Disclaimer

This guide assumes basic familiarity with Linux.
You are responsible for your system.
Review each step before executing any commands.

---

## 1. Download Artix Linux

1. Go to the official Artix download webpage: [https://torrents.artixlinux.org/torrents.php](https://torrents.artixlinux.org/torrents.php)
2. Download the Plasma/OpenRC ISO

> [!TIP]
> The filename will look something like: **artix-plasma-openrc-XXXXXXXX-x86_64.iso**

---

## 2. Create Bootable USB

Burn the ISO to a USB thumb drive

> [!TIP]
> If you don't know how to do this, I recommend using [Balena Etcher](https://etcher.balena.io/)

---

## 3. Initial Boot and Installation

1. Boot from the USB
2. Launch the installer
3. Follow prompts until partitioning

---

## 4. Drive Partitioning (Btrfs)

> [!IMPORTANT]
> Make sure to change the filesystem to **Btrfs**

> [!CAUTION]
> Do NOT use the default **ext4**

---

## 5. Complete Installation

Finish the installer, reboot, and log in

---

## 6. Clone This Repo

Open a terminal, and run the following commands:

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

## 7. Run the Core Setup Scripts

```bash
cd 1-core-setup
sh 1-system-setup.sh
sh 2-system-drivers.sh
```

---

## 8. Run any of the Optional Setup Scripts you are interested in

```bash
cd 2-optional-setup
sh install-XXXXX.sh
```

---

## 9. When you want to upgrade your OS, run the update script

```bash
cd 3-update-system
sh update-system.sh
```
> [!CAUTION]
> Do NOT delete the artix-desktop-setup directory when you are done
> Use the update scripts to keep your OS up-to-date

---
