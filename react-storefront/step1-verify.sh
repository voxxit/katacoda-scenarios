#!/bin/bash

###
# semantic version comparition using semver specification http://semver.org/
# This bash script compares pre-releases alphabetically as well
#
# returns 1 when A greater than B
# returns 0 when A equals B
# returns -1 when A lower than B
#
# Usage
# chmod +x semver.sh
# ./semver.sh 1.0.0 v1.0.0-rc.0
# --> 1
#
# Author Ariel Rodriguez
# License MIT
###
semver_compare() {
  local version_a version_b pr_a pr_b
  # strip word "v" and extract first subset version (x.y.z from x.y.z-foo.n)
  version_a=$(echo "${1//v/}" | awk -F'-' '{print $1}')
  version_b=$(echo "${2//v/}" | awk -F'-' '{print $1}')

  if [ "$version_a" \= "$version_b" ]
  then
    # check for pre-release
    # extract pre-release (-foo.n from x.y.z-foo.n)
    pr_a=$(echo "$1" | awk -F'-' '{print $2}')
    pr_b=$(echo "$2" | awk -F'-' '{print $2}')
    # 0 when A is equal to B
    [ "$pr_a" \= "$pr_b" ] && echo 0 && return 0
    # 1 when A is not pre-release or (pre-release A exists and is greater than B's pre-release)
    [ -z "$pr_a" ] || [ "$pr_a" \> "$pr_b" ] && [ -n "$pr_b" ] && echo 1 && return 0
    # -1 when A is lower than B
    echo -1 && return 0
  fi
  arr_version_a=(${version_a//./ })
  arr_version_b=(${version_b//./ })
  cursor=0
  # Iterate arrays from left to right and find the first difference
  while [ "$([ "${arr_version_a[$cursor]}" -eq "${arr_version_b[$cursor]}" ] && [ $cursor -lt ${#arr_version_a[@]} ] && echo true)" == true ]
  do
    cursor=$((cursor+1))
  done
  [ "${arr_version_a[$cursor]}" -gt "${arr_version_b[$cursor]}" ] && echo 1 || echo -1
}

if which node; then exit 1; done