ansible-playbook -u root -i rit, -c docker ansible/playbooks/bootstrap.yml
ansible-playbook -u root -i rit, -c docker ansible/playbooks/setup_user_app.yml
