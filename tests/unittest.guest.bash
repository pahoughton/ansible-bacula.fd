#!/bin/bash
# 2015-06-17 (cc) <paul4hough@gmail.com>
#
status=0
echo -n exists /etc/bacula/bacula-fd.conf:
if [ -f /etc/bacula/bacula-fd.conf ] ; then
  echo pass
else
  echo FAIL
  status=1
fi

echo -n running service bacual-fd:
if service bacula-fd status ; then
  echo pass
else
  echo FAIL
  status=1
fi
exit $status
