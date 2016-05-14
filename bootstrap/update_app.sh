#!/usr/bin/env /bin/bash
source `which virtualenvwrapper.sh`
workon rit
cd /code/rit-homepage/
RIT_SETTINGS_MODULE='rithomepage.settings' python ./rit-admin.py migrations apply
cd /code/rit-demo/
RIT_SETTINGS_MODULE='ritdemo.settings' python ./rit-admin.py migrations apply

