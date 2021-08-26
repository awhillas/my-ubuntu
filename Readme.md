## Installing Ansible with pip

    python3 -m pip install --user ansible
    ansible-galaxy install -r requirements.yml
    ansible-galaxy collection install community.general

## Running on localhost

To run for localhost

    ansible-playbook -K site.yaml

## TODO
-[ ] Setup Nerd Fonts using their script
-[ ] batcat settup
-[ ] jq
