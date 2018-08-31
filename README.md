# cockroachdb-alpine-docker
Dockerfile for running cockroachdb in alpine docker

## Environment variables
  - COCKROACH_DB  
    The database that will be created when container is run
  - COCKROACH_USER  
    The user that will be granted privileges to $COCKROACH_DB
## Running
```
sudo docker run 
```