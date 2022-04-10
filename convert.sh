#!/bin/bash

# Get path of script that support symlinking
# https://stackoverflow.com/a/246128
GET_PATH_OF_SCRIPT() {
  SOURCE=${BASH_SOURCE[0]}
  while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
    SOURCE=$(readlink "$SOURCE")
    [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
  done
  cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd
}

DIR=$(GET_PATH_OF_SCRIPT)

for file in "$@"
do
  echo "Parsing "${file}
  sed -i '' -e 's|<span class="label-name">|<span class="label-name">#|g' "${file}"
  python3 ${DIR}/set_time.py "${file}"
done
