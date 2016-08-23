#!/bin/bash
# Check for any updates of Linux
sudo apt-get update
# Update Vision-Sim
cd /
cd Github/
# Run backup of current Working Vision-Sim System
tar czf backup.$(date +%Y%m%d-%H%M%S).tar.gz Vision-Sim
cd Vision-Sim/
git pull https://github.com/VisionSim/Vision-Sim.git
./runprebuild.sh
xbuild