#!/bin/sh

set -e
set -x

TIMESTAMP=$(date +%Y_%m_%d_%H%M.%S)
S3_PATH='s3://onescreen-backups/mysql-osember/'
LOCAL_PATH='/mnt/mysql-backups-prod_ember'
LOCAL_FILE="$LOCAL_PATH/prod_ember_database_${TIMESTAMP}.sql.gz"
LOCAL_MYSQL_DEFAULTS_FILE='/home/ubuntu/rds_replication/.my.cnf-prod-ember'
MYSQL_DEFAULTS_FILE='/home/ubuntu/rds_replication/.my.cnf-osapi_writer'
REMOTE_MYSQL_HOSTNAME='reporting.cuz8ekupukyf.us-east-1.rds.amazonaws.com'
S3CMD_CONF='/home/ubuntu/.s3cfg'
DB_NAME='prod_ember'
TABLES=''

# create base for osapi only
echo -e "${TIMESTAMP}\nRunning mysqldump..."
/usr/bin/mysqldump --defaults-file=$LOCAL_MYSQL_DEFAULTS_FILE -e -q --single-transaction $DB_NAME $TABLES | /bin/gzip -9 > $LOCAL_FILE

# upload to S3
#echo "Uploading to S3..."
#/usr/bin/s3cmd -c $S3CMD_CONF put "$LOCAL_FILE" "$S3_PATH"

# delete backups older than 15 days
/usr/bin/find "$LOCAL_PATH" -name "*.sql.gz" -ctime +7 -exec rm {} \;

echo "Writing data to the destination database..."
/bin/zcat $LOCAL_FILE | mysql --defaults-file=$MYSQL_DEFAULTS_FILE $DB_NAME

echo "Done."
exit 0
