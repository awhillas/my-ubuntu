# Setup 

## Bootstrap 

Setup a SSH key

    ssh-keygen -t ed25519 -C "alex@yabblezone.net"
    cat ~/.ssh/id_ed25519.pub

Add the key in [github settings](https://github.com/settings/keys). Then clone this repo

    git clone git@github.com:awhillas/my-ubuntu.git

## Installing Ansible with pip

    sudo apt update
    sudo apt install -y ansible
    ansible-galaxy install -r requirements.yml
    ansible-galaxy collection install community.general

## Running on localhost

To run for localhost

    ansible-playbook -K site.yaml

## TODO
-[ ] Setup Nerd Fonts using their script
-[ ] batcat settup
-[ ] jq
