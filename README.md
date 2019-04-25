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

This still goes in `ossec/etc/ossec.conf` for now.

## To do

### 0.1

- Test MySQL.

- Monitor for crashes.

- Test on Linux.

### Post 0.1

- Add agent info into the db.

- Add rules into the db?

- Maybe have someone that knows something about DBs look at how we do things.

