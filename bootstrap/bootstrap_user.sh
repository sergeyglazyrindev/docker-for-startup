#!/usr/bin/env /bin/bash
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source `which virtualenvwrapper.sh`
mkvirtualenv --python=python3.4 rit
workon rit
cd /code/ritcore/
python setup.py develop
cd ../rit/
python setup.py develop
