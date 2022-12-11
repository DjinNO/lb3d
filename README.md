# lb3d
![lb3d](/.img/octbpi.png)

Portable 3D printer with OctoPrint and WiFi access point 

Description
---
With this repo you can easy burn BPI-M2 ZERO Armbian image to sd card and setup OctoPrint and WiFi AP-STA Access Point

AP-STA - With this feature you will have WiFi access point on BPI for admin control and BPI will be connected to your home AP as client


| Software | Hardware |
|----------|----------|
| [Armbian 21.08.1 focal_current 5.10.60](https://imola.armbian.com/archive/bananapim2zero/archive/) | [e3d nano](https://www.easythreed.com/en/h-col-1203.html) |
| [Docker](https://www.docker.com/) | [Banana Pi M2 Zero](https://wiki.banana-pi.org/Banana_Pi_BPI-M2_ZERO) |
| [OctoPrint](https://octoprint.org) | [ELRS 2.4G Antenna (without module)](https://www.drone-fpv-racer.com/en/elrs-24g-dual-antenna-nano-receiver-by-skystars-9815.html) |
| [cloudflared](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/) | 12v MOSFET |
| | USB-C PD Trigger 12v |

Requirements
---
- [Docker](https://docs.docker.com/get-docker)
- [Taskfile](https://taskfile.dev/installation)
- wget
- unxz

**NOTE:** If you want to build with Dockerfile - change value of **CI_DOCKER_IMAGE** to **dansible** in Taskfile.yml

Preparation
---
- Install requirements
- Insert SD card into PC
- Find SD card path with lsblk
- Prepare Burning part of **.env** file (look at .env.example)
```
- task burn 
```
Provisioning
---
- Insert SD card into bpi-m2 zero
- Power it on, wait and find bpi ip address
- Prepare Provisioning part of **.env** file (look at .env.example)
```
- task ansible
```
- Done!

Server Maintenance
---
```
task ssh               # Conncet to server (becomes available after prepare role completed)
task update:octoprint  # Update OctoPrint - docker-compose pull (latest)
task backup:all        # Backup and download all data to the ./backup directory
task restore:all       # Upload and restore all data from the ./backup directory
task backup:octoprint  # Backup and download OctoPrint data to the ./backup/octoprint directory
task restore:octoprint # Upload and restore OctoPrint data from the ./backup/octoprint directory
```

Cura settings
---
```
x: 90
y: 110
z: 110
```

Circuit:
#TODO
