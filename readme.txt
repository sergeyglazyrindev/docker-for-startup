docker-compose -d up

then execute
ansible-playbook -u root -i rit, -c docker ansible/playbooks/bootstrap.yml
ansible-playbook -u root -i rit, -c docker ansible/playbooks/setup_user_app.yml

now restart docker container: docker-compose stop && docker-compose up
ansible-playbook -u root -i rit, -c docker ansible/playbooks/on_started_server.yml

add to your hosts file on host something like that:
172.17.0.12 rithome.com
172.17.0.12 test_res_1463253453.tryrit.com tryrit.com
