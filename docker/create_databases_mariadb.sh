#!/bin/bash

set -e
set -u

function create_user_and_database() {
	local database=$1
	echo "  Creating database '$database'"
	mariadb -v --user=root --password="$MARIADB_ROOT_PASSWORD" <<-EOSQL
		CREATE DATABASE IF NOT EXISTS $database;
		GRANT ALL PRIVILEGES ON $database.* TO $MARIADB_USER@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
EOSQL
}

if [ -n "$MARIADB_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $MARIADB_MULTIPLE_DATABASES"
	for db in $(echo $MARIADB_MULTIPLE_DATABASES | tr ',' ' '); do
		create_user_and_database $db
	done
	echo "Multiple databases created"
fi
