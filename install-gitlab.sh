#!/bin/bash -e

# Gitlab Install Script for Ubuntu and Debian
# https://github.com/bravikov/gitlab-install

# 1. Install and configure the necessary dependencies
sudo apt-get install curl openssh-server ca-certificates postfix

# 2. Add the GitLab package server and install the package
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install gitlab-ce

# 3. Configure and start GitLab
sudo gitlab-ctl reconfigure
