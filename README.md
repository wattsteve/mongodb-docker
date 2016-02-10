# mongodb-docker
A docker Image for MongoDB 3.2 that supports replication sets. Modify the attached mongod.conf to specify your desired mongo configuration and it will mount that into the container and start mongo with those parameters. The example included specifies a replica set for the cluster of rs0.

### Build
`docker build -t mongodb-3.2 .`

### Usage
For each node that you want to run MongoD on, run the following command:

`docker run -v /opt/mongod.conf:/etc/mongod.conf -d mongodb-3.2`
