# ossec-dbd


ossec-dbd has been a part of OSSEC for a long time. It's old and crufty,
and I'm not sure if it actually works.

So I want it gone, and putting it in its own location seems okay. Maybe 
it can get some love here.

The configuration is going to change. I'm tired of xml, and I don't think
it needs to be in the main ossec.conf. The configuration will be simpler
(I hope).


## Build

`env DBD_DEFINES=-DPGSQL_DATABASE_ENABLED DBD_INCLUDES="-I/usr/local/include/postgresql -L/usr/local/lib/postgresql -lpq" make`

`env DBD_DEFINES=-DMYSQL_DATABASE_ENABLED make`

## Configuration

* host - Can be a socket?

* username

* password

* database

* number of reconnection attempts

* OSSEC installation directory

* user to run ossec-dbd

* group to run ossec-dbd

