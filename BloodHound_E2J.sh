#!/bin/sh

PrebuiltQueries_Path="/usr/lib/bloodhound/resources/app/src/components/SearchContainer/Tabs/PrebuiltQueries.json"
CustomQueries_Path="${HOME}/.config/bloodhound/CustomQueries.json"

# pre 
mkdir -p ${HOME}/.config/bloodhound/
mkdir backups

# BackUp
cp $PrebuiltQueries_Path ./backups/PrebuiltQueries.json
cp $CustomQueries_Path ./backups/CustomQueries.json

# OverWrite
sudo cp ./queries/PrebuiltQueries.json $PrebuiltQueries_Path
cp ./queries/CustomQueries.json $CustomQueries_Path

