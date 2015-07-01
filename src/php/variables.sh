#!/usr/bin/env bash

if [ -z "${SERVER_NAME}" ]; then
  SERVER_NAME="localhost"
fi

export FACTER_SERVER_NAME="${SERVER_NAME}"

SMTP_PORT="$(echo "${SMTP_PORT}" | sed 's/tcp:\/\///')"

export FACTER_SMTP_HOST="$(echo "${SMTP_PORT}" | cut -d ":" -f1)"
export FACTER_SMTP_PORT="$(echo "${SMTP_PORT}" | cut -d ":" -f2)"

MYSQLD_HOST="$(echo "${MYSQLD_PORT}" | sed 's/tcp:\/\///')"

export FACTER_MYSQLD_HOST="$(echo "${MYSQLD_HOST}" | cut -d ":" -f1)"
export FACTER_MYSQLD_PORT="$(echo "${MYSQLD_HOST}" | cut -d ":" -f2)"

MEMCACHED_HOST="$(echo "${MEMCACHED_PORT}" | sed 's/tcp:\/\///')"

export FACTER_MEMCACHED_HOST="$(echo "${MEMCACHED_HOST}" | cut -d ":" -f1)"
export FACTER_MEMCACHED_PORT="$(echo "${MEMCACHED_HOST}" | cut -d ":" -f2)"

REDIS_HOST="$(echo "${REDIS_PORT}" | sed 's/tcp:\/\///')"

export FACTER_REDIS_HOST="$(echo "${REDIS_HOST}" | cut -d ":" -f1)"
export FACTER_REDIS_PORT="$(echo "${REDIS_HOST}" | cut -d ":" -f2)"

if [ -z "${USER_ID}" ]; then
  USER_ID=$(id www-data -u)
fi

export FACTER_USER_ID="${USER_ID}"

if [ -z "${GROUP_ID}" ]; then
  GROUP_ID=$(id www-data -g)
fi

export FACTER_GROUP_ID="${GROUP_ID}"

if [ -z "${DRUPAL_VERSION}" ]; then
  DRUPAL_VERSION="8"
fi

export FACTER_DRUPAL_VERSION="${DRUPAL_VERSION}"

if [ -z "${PHP_INI_REALPATH_CACHE_SIZE}" ]; then
  PHP_INI_REALPATH_CACHE_SIZE="256k"
fi

export FACTER_PHP_INI_REALPATH_CACHE_SIZE="${PHP_INI_REALPATH_CACHE_SIZE}"

if [ -z "${PHP_INI_REALPATH_CACHE_TTL}" ]; then
  PHP_INI_REALPATH_CACHE_TTL="3600"
fi

export FACTER_PHP_INI_REALPATH_CACHE_TTL="${PHP_INI_REALPATH_CACHE_TTL}"

if [ -z "${PHP_INI_POST_MAX_SIZE}" ]; then
  PHP_INI_POST_MAX_SIZE="512M"
fi

export FACTER_PHP_INI_POST_MAX_SIZE="${PHP_INI_POST_MAX_SIZE}"

if [ -z "${PHP_INI_TIMEZONE}" ]; then
  PHP_INI_TIMEZONE="UTC"
fi

export FACTER_PHP_INI_TIMEZONE="${PHP_INI_TIMEZONE}"

if [ -z "${PHP_INI_UPLOAD_MAX_FILESIZE}" ]; then
  PHP_INI_UPLOAD_MAX_FILESIZE="512M"
fi

export FACTER_PHP_INI_UPLOAD_MAX_FILESIZE="${PHP_INI_UPLOAD_MAX_FILESIZE}"

if [ -z "${PHP_INI_SHORT_OPEN_TAG}" ]; then
  PHP_INI_SHORT_OPEN_TAG="On"
fi

export FACTER_PHP_INI_SHORT_OPEN_TAG="${PHP_INI_SHORT_OPEN_TAG}"

if [ -z "${PHP_INI_MAX_EXECUTION_TIME}" ]; then
  PHP_INI_MAX_EXECUTION_TIME="300"
fi

export FACTER_PHP_INI_MAX_EXECUTION_TIME="${PHP_INI_MAX_EXECUTION_TIME}"

if [ -z "${PHP_INI_MAX_INPUT_VARS}" ]; then
  PHP_INI_MAX_INPUT_VARS="4096"
fi

export FACTER_PHP_INI_MAX_INPUT_VARS="${PHP_INI_MAX_INPUT_VARS}"

if [ -z "${PHP_INI_MEMORY_LIMIT}" ]; then
  PHP_INI_MEMORY_LIMIT="512M"
fi

export FACTER_PHP_INI_MEMORY_LIMIT="${PHP_INI_MEMORY_LIMIT}"

if [ -z "${PHP_INI_DISPLAY_ERRORS}" ]; then
  PHP_INI_DISPLAY_ERRORS="On"
fi

export FACTER_PHP_INI_DISPLAY_ERRORS="${PHP_INI_DISPLAY_ERRORS}"

if [ -z "${PHP_INI_DISPLAY_STARTUP_ERRORS}" ]; then
  PHP_INI_DISPLAY_STARTUP_ERRORS="On"
fi

export FACTER_PHP_INI_DISPLAY_STARTUP_ERRORS="${PHP_INI_DISPLAY_STARTUP_ERRORS}"

if [ -z "${PHP_INI_ERROR_REPORTING}" ]; then
  PHP_INI_ERROR_REPORTING="E_ALL"
fi

export FACTER_PHP_INI_ERROR_REPORTING="${PHP_INI_ERROR_REPORTING}"

if [ -z "${PHP_INI_EXPOSE_PHP}" ]; then
  PHP_INI_EXPOSE_PHP="On"
fi

export FACTER_PHP_INI_EXPOSE_PHP="${PHP_INI_EXPOSE_PHP}"

if [ -z "${PHP_INI_ALLOW_URL_FOPEN}" ]; then
  PHP_INI_ALLOW_URL_FOPEN="On"
fi

export FACTER_PHP_INI_ALLOW_URL_FOPEN="${PHP_INI_ALLOW_URL_FOPEN}"

if [ -z "${PHP_INI_OPCACHE}" ]; then
  PHP_INI_OPCACHE="On"
fi

export FACTER_PHP_INI_OPCACHE="${PHP_INI_OPCACHE}"

if [ -z "${PHP_INI_OPCACHE_MEMORY_CONSUMPTION}" ]; then
  PHP_INI_OPCACHE_MEMORY_CONSUMPTION="2048"
fi

export FACTER_PHP_INI_OPCACHE_MEMORY_CONSUMPTION="${PHP_INI_OPCACHE_MEMORY_CONSUMPTION}"

if [ -z "${PHP_INI_XDEBUG}" ]; then
  PHP_INI_XDEBUG="On"
fi

export FACTER_PHP_INI_XDEBUG="${PHP_INI_XDEBUG}"

if [ -z "${PHP_INI_XDEBUG_REMOTE_PORT}" ]; then
  PHP_INI_XDEBUG_REMOTE_PORT="9000"
fi

export FACTER_PHP_INI_XDEBUG_REMOTE_PORT="${PHP_INI_XDEBUG_REMOTE_PORT}"

if [ -z "${PHP_INI_XDEBUG_REMOTE_HOST}" ]; then
  PHP_INI_XDEBUG_REMOTE_HOST="127.0.0.1"
fi

export FACTER_PHP_INI_XDEBUG_REMOTE_HOST="${PHP_INI_XDEBUG_REMOTE_HOST}"

if [ -z "${PHP_INI_XDEBUG_REMOTE_CONNECT_BACK}" ]; then
  PHP_INI_XDEBUG_REMOTE_CONNECT_BACK="On"
fi

export FACTER_PHP_INI_XDEBUG_REMOTE_CONNECT_BACK="${PHP_INI_XDEBUG_REMOTE_CONNECT_BACK}"

if [ -z "${PHP_INI_XDEBUG_IDEKEY}" ]; then
  PHP_INI_XDEBUG_IDEKEY="PHPSTORM"
fi

export FACTER_PHP_INI_XDEBUG_IDEKEY="${PHP_INI_XDEBUG_IDEKEY}"

if [ -z "${PHP_INI_MEMCACHED}" ]; then
  PHP_INI_MEMCACHED="On"
fi

export FACTER_PHP_INI_MEMCACHED="${PHP_INI_MEMCACHED}"

if [ -z "${PHP_INI_REDIS}" ]; then
  PHP_INI_REDIS="On"
fi

export FACTER_PHP_INI_REDIS="${PHP_INI_REDIS}"

if [ -z "${PHP_INI_BLACKFIRE}" ]; then
  PHP_INI_BLACKFIRE="On"
fi

export FACTER_PHP_INI_BLACKFIRE="${PHP_INI_BLACKFIRE}"

if [ -z "${PHP_INI_BLACKFIRE_SERVER_ID}" ]; then
  PHP_INI_BLACKFIRE_SERVER_ID=""
fi

export FACTER_PHP_INI_BLACKFIRE_SERVER_ID="${PHP_INI_BLACKFIRE_SERVER_ID}"

if [ -z "${PHP_INI_BLACKFIRE_SERVER_TOKEN}" ]; then
  PHP_INI_BLACKFIRE_SERVER_TOKEN=""
fi

export FACTER_PHP_INI_BLACKFIRE_SERVER_TOKEN="${PHP_INI_BLACKFIRE_SERVER_TOKEN}"

if [ -z "${PHP_INI_APCU}" ]; then
  PHP_INI_APCU="On"
fi

export FACTER_PHP_INI_APCU="${PHP_INI_APCU}"

if [ -z "${PHP_INI_APD}" ]; then
  PHP_INI_APD="On"
fi

export FACTER_PHP_INI_APD="${PHP_INI_APD}"

if [ -z "${PHP_FPM_PM}" ]; then
  PHP_FPM_PM="dynamic"
fi

export FACTER_PHP_FPM_PM="${PHP_FPM_PM}"

if [ -z "${PHP_FPM_PM_MAX_CHILDREN}" ]; then
  PHP_FPM_PM_MAX_CHILDREN="5"
fi

export FACTER_PHP_FPM_PM_MAX_CHILDREN="${PHP_FPM_PM_MAX_CHILDREN}"

if [ -z "${PHP_FPM_PM_START_SERVERS}" ]; then
  PHP_FPM_PM_START_SERVERS="2"
fi

export FACTER_PHP_FPM_PM_START_SERVERS="${PHP_FPM_PM_START_SERVERS}"

if [ -z "${PHP_FPM_PM_MIN_SPARE_SERVERS}" ]; then
  PHP_FPM_PM_MIN_SPARE_SERVERS="1"
fi

export FACTER_PHP_FPM_PM_MIN_SPARE_SERVERS="${PHP_FPM_PM_MIN_SPARE_SERVERS}"

if [ -z "${PHP_FPM_PM_MAX_SPARE_SERVERS}" ]; then
  PHP_FPM_PM_MAX_SPARE_SERVERS="3"
fi

export FACTER_PHP_FPM_PM_MAX_SPARE_SERVERS="${PHP_FPM_PM_MAX_SPARE_SERVERS}"

if [ -z "${PHP_FPM_PM_PROCESS_IDLE_TIMEOUT}" ]; then
  PHP_FPM_PM_PROCESS_IDLE_TIMEOUT="10s"
fi

export FACTER_PHP_FPM_PM_PROCESS_IDLE_TIMEOUT="${PHP_FPM_PM_PROCESS_IDLE_TIMEOUT}"

if [ -z "${PHP_FPM_PM_MAX_REQUESTS}" ]; then
  PHP_FPM_PM_MAX_REQUESTS="0"
fi

export FACTER_PHP_FPM_PM_MAX_REQUESTS="${PHP_FPM_PM_MAX_REQUESTS}"

for VARIABLE in $(env); do
  if [[ "${VARIABLE}" =~ ^FREETDS_[[:digit:]]_HOST=.*$ ]]; then
    i="$(echo ${VARIABLE} | awk -F '_' '{ print $2 }')"

    FREETDS_HOST="FREETDS_${i}_HOST"
    FREETDS_PORT="FREETDS_${i}_PORT"
    FREETDS_TDS_VERSION="FREETDS_${i}_TDS_VERSION"
    FREETDS_SERVER_NAME="FREETDS_${i}_SERVER_NAME"

    if [ -z "${!FREETDS_HOST}" ]; then
      continue
    fi

    if [ -z "${!FREETDS_PORT}" ]; then
      declare "${FREETDS_PORT}=1433"
    fi

    if [ -z "${!FREETDS_TDS_VERSION}" ]; then
      declare "${FREETDS_TDS_VERSION}=8.0"
    fi

    if [ -z "${!FREETDS_SERVER_NAME}" ]; then
      declare "${FREETDS_SERVER_NAME}=server-${i}"
    fi

    export "FACTER_${FREETDS_HOST}=${!FREETDS_HOST}"
    export "FACTER_${FREETDS_PORT}=${!FREETDS_PORT}"
    export "FACTER_${FREETDS_TDS_VERSION}=${!FREETDS_TDS_VERSION}"
    export "FACTER_${FREETDS_SERVER_NAME}=${!FREETDS_SERVER_NAME}"
  fi
done
