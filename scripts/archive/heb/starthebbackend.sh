#!/bin/bash

printf '\033]2;heb backend (cas)\a'

echo cd ~/git/heb
cd ~/git/heb

echo startoracle
startoracle
sleep 5s

echo ant start-endeca-with-cas
ant start-endeca-with-cas
sleep 10s

echo ant -Dfrontend=false all
ant -Dfrontend=false all
sleep 3s

echo ant update-env-schemas
ant update-env-schemas
sleep 3s

echo ant update-data
ant update-data
sleep 3s

echo ant update-test-data
ant update-test-data
sleep 3s

echo startatg
startatg
