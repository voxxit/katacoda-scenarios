[ "$(command -v node)" = "/usr/bin/node" ] \
[ "$(command -v npm)"  = "/usr/bin/npm"  ] \
[ "$(command -v yarn)" = "/usr/bin/yarn" ] \
[ -f /etc/apt/sources.list.d/nodesource.list ] \
  && echo "done"
