# trino-local
This is an example of local setup of Trino


## Requirements
* Docker Runtime

## How to generate the secret key for `INTERNAL_COMMUNICATION_SECRET`

simply run this command in your terminal
```
openssl rand 32 | base64
```
This is needed to be able to configure the coordinator and all workers to encrypt all communication with each other using TLS. Every node in the cluster must be configured. Nodes that have not been configured, or are configured incorrectly, are not able to communicate with other nodes in the cluster.

## Getting started
To run trino simply run: `make trino-up`. If everything works sucessfully you can reach trino coordinator UI at [localhost:8080](http://localhost:8080).

To test to connection to Trino cluster and see if everything working, you can use any DB client such as dbeaver, dataGrip so on:

* I am using dbeaver so I added my connection there
* Run `make trino-cli` 
    * Try to run a query like: `SELECT count(*) FROM tpch.tiny.nation;` if you get a result everything worked fine


## Notes
* The sum of `query.max-memory-per-node`  and `memory.heap-headroom-per-node` cannot be bigger than the maxHeapSize

