# lb3d

Description
---
Portable 3D printer with OctoPrint and WiFi access point 

| Software | Hardware |
|----------|----------|
| [Armbian 21.08.1 focal_current 5.10.60](https://imola.armbian.com/archive/bananapim2zero/archive/) | [e3d nano](https://www.easythreed.com/en/h-col-1203.html) |
| [Docker](https://www.docker.com/) | [Banana Pi M2 Zero](https://wiki.banana-pi.org/Banana_Pi_BPI-M2_ZERO) |
| [OctoPrint](https://octoprint.org) ||

Requirements
---
- [Docker](https://docs.docker.com/get-docker)
- [Taskfile](https://taskfile.dev/installation)
- wget
- unxz

NOTE: If you want to build Dockerfile - just change value of CI_DOCKER_IMAGE to dansible

Preparation
---
- Install requirements
- Insert SD card into PC
- Find SD card path with lsblk
- Prepare flashing part of .env file (look at .env.example)
```
- task flash 
```
Provisioning
---
- Insert SD card into bpi-m2 zero
- Power it on, wait and find bpi ip address
- Prepare provisioning part of .env file (look at .env.example)
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

Circuit:
#TODO
