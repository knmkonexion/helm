#!/bin/bash

set -e

clear

echo '___________________________'
echo "  _   _      _           "
echo " | | | | ___| |_ __ ___  "
echo " | |_| |/ _ \ | '_ ' _ \ "
echo " |  _  |  __/ | | | | | |"
echo " |_| |_|\___|_|_| |_| |_|"
echo '___________________________'                         

echo ''
echo '---> Installing Helm <---'
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm version

echo ''
echo '-------------'
echo '-- SUCCESS --'
echo '-------------'
echo 'Helm has been installed, you can now start mounting repos and deploying content'