# ossec-dbd


`ossec-dbd` has been a part of OSSEC for a long time. It's old and crufty,
and I'm not sure if it actually works.

So I want it gone, and putting it in its own location seems okay. Maybe 
it can get some love here.


## Build

`make postgresql` or `make mysql`

The Makefile will run either `util/pg.sh` or `util/mysql.sh` to populate `Makefile.inc`.
Then it will run `make -f Makefile.build` to actually make `ossec-dbd`

## Configuration

* host - Can be a socket?

* username

* password

* database

* number of reconnection attempts

* OSSEC installation directory

* user to run ossec-dbd

* group to run ossec-dbd


## To do

### 0.1

Figure out the build infrastructure. Do we need something like auto tools?
I'd rather not, but if that's easier than figuring out the rest, I guess it's okay.
Hack-ish Makefile stuff might be ok at this point.

Test MySQL.

Monitor for crashes.

Test on Linux.

