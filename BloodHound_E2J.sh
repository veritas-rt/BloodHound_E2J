#!/bin/sh

PrebuiltQueries_Path="/usr/lib/bloodhound/resources/app/src/components/SearchContainer/Tabs/PrebuiltQueries.json"
CustomQueries_Path="~/.config/bloodhound/CustomQueries.json"

# BackUp
cp $PrebuiltQueries_Path ./backups/PrebuiltQueries.json
cp $CustomQueries_Path ./backups/CustomQueries.json

# OverWrite
sudo cp ./queries/PrebuiltQueries.json $PrebuiltQueries_Path
cp ./queries/customQueries.json $CustomQueries_Path

