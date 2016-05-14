#!/usr/bin/env /bin/bash
source `which virtualenvwrapper.sh`
workon rit
cd /code/rit-homepage/

start_work_on_project.sh &
RIT_SETTINGS_MODULE='rithomepage.settings' uwsgi uwsgi.ini &

cd /code/rit-demo/

start_work_on_project.sh &
RIT_SETTINGS_MODULE='ritdemo.settings' uwsgi uwsgi.ini &
