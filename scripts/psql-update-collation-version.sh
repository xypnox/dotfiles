#!/bin/bash

# Get the list of databases
databases=$(psql -U postgres -t -c "SELECT datname FROM pg_database WHERE datistemplate = false;")

for db in $databases; do
    echo "Processing $db"

    # Reindex the database
    psql -U postgres -d $db -c "REINDEX DATABASE $db;"

    # Refresh the collation version
    psql -U postgres -d $db -c "ALTER DATABASE $db REFRESH COLLATION VERSION;"

    echo "Finished processing $db"
done
