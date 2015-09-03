#!/usr/bin/env bats

DOCKER_COMPOSE_FILE="${BATS_TEST_DIRNAME}/php-5.4_ini_realpath_cache_size.yml"

container() {
  echo "$(docker-compose -f ${DOCKER_COMPOSE_FILE} ps php | grep php | awk '{ print $1 }')"
}

setup() {
  docker-compose -f "${DOCKER_COMPOSE_FILE}" up -d

  sleep 10
}

teardown() {
  docker-compose -f "${DOCKER_COMPOSE_FILE}" kill
  docker-compose -f "${DOCKER_COMPOSE_FILE}" rm --force
}

@test "php-5.4: ini: realpath_cache_size" {
  run docker exec "$(container)" /bin/su - root -lc "cat /usr/local/src/php-5.4farm/inst/current/etc/conf.d/realpath_cache_size.ini | grep 'realpath_cache_size'"

  [ "${status}" -eq 0 ]
  [[ "${output}" == *"512k"* ]]
}
