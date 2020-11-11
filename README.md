# CSV Crunch 

Simple base project for csv data crunching.
Turn your csvs into a local db you can then analyse. 

## Requirements
- Docker
- Bash

## How do it work

Simple run the import script and it will :
- spin up a docker image of postgres
- run an import of csv to sql to initialise the database.


## Optional Improvements

- add export.sh to dump the db into an sql file 
- could be made more generic - with parsing csv structure data or adding a yml
  config file, but honestly this could be over engineering what is supposed to
be a quick hack to import a bunch of csvs in/



