#!/bin/sh

if [ -e ./Makefile.inc ]; then
  rm -f Makefile.inc.backup
  mv Makefile.inc Makefile.inc.backup
fi


INC=$(pg_config --includedir)
LIB=$(pg_config --libdir)
PCRE2_PRE=$(pcre2-config --prefix)
PCRE2_LOC=${PCRE2_PRE}/include


echo "PG_INCLUDES=-I${INC}" >> Makefile.inc
echo "PG_LIB=-L${LIB}" >> Makefile.inc
echo "DBD_DEFINES+=-DPGSQL_DATABASE_ENABLED" >> Makefile.inc

echo "PCRE2_PREFIX=${PCRE2_PRE}" >> Makefile.inc
echo "PCRE2_LOCATION=${PCRE2_LOC}" >> Makefile.inc

echo "DBD_INCLUDES:=-I./headers -I. -I./os_xml -I./os_regex -I./config -I${PCRE2_LOC} -I${INC}" >> Makefile.inc
echo "DBD_INCLUDES_EXTRA:=-L${LIB} -lpq" >> Makefile.inc

