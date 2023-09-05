#!/bin/bash

set -e
set -u

function create_user_and_database() {
	local database=$1
	echo "  Creating database '$database'"
	mysql -v ON_ERROR_STOP=1 --username "$MYSQL_USER" --password "$MYSQL_PASSWORD" <<-EOSQL
		CREATE DATABASE IF NOT EXISTS $database;
		GRANT ALL PRIVILEGES ON database.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
	    CREATE DATABASE $database;
EOSQL
}

if [ -n "$MYSQL_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $MYSQL_MULTIPLE_DATABASES"
	for db in $(echo $MYSQL_MULTIPLE_DATABASES | tr ',' ' '); do
		create_user_and_database $db
	done
	echo "Multiple databases created"
fi