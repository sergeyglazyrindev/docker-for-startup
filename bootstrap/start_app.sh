#!/usr/bin/env /bin/bash
source `which virtualenvwrapper.sh`
workon rit
cd /code/rit-homepage/

start_work_on_project.sh &
./rit-admin.py startuwsgi &

cd /code/rit-demo/

start_work_on_project.sh &
./rit-admin.py startuwsgi &
