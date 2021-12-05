#!/usr/bin/env sh


dump_db(){
    # $1 is database host
    # $2 is database port
    # $3 is database user
    # $4 is database password
    # $5 is database name
    # $6 is the filename that database will be dump to without extension name
    if [ "$#" -ne 6 ]
    then
        echo "Wrong arguments number"
        echo "Need 6 arguments but get $#"
        exit 1
    fi
    echo "Dumping database to '$6.sql'..."
    mkdir -p "$(dirname "$6")"
    mysqldump \
        --host="$1" \
        --port="$2" \
        --user="$3" \
        --password="$4" \
        --databases "$5" \
        --single-transaction \
        > "$6.sql"
    # Exit codes
    # https://github.com/twitter-forks/mysql/blob/master/client/mysqldump.c#L58
}
