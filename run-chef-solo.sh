#!/bin/bash
gem install chef
chef_binary=/home/user/.rbenv/shims/chef-solo

# Are we on a vanilla system?
if ! test -f "$chef_binary"; then
    export DEBIAN_FRONTEND=noninteractive
    # Upgrade headlessly (this is only safe-ish on vanilla systems)
    # Install ruby, Chef, knife-ec2 and dependencies, 
    sudo apt-get update && sudo apt-get install -y -q git-core build-essential curl
    sudo apt-get install -y ruby1.9.1-full
    sudo gem install knife-ec2 --no-ri --no-rdoc
fi &&

# Run chef-solo
sudo "$chef_binary" -c solo.rb -j node.json
