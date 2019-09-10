# RabbitMQ Peer Discovery Consul

This is a Consul-based implementation of RabbitMQ [peer discovery interface](http://www.rabbitmq.com/blog/2018/02/12/peer-discovery-subsystem-in-rabbitmq-3-7/)
(new in 3.7.0, previously available in the [rabbitmq-autocluster plugin](https://github.com/rabbitmq/rabbitmq-autocluster)
by Gavin Roy).

This plugin only performs peer discovery and most basic node health monitoring
using [Consul](https://www.consul.io/) as a data source.
Please get familiar with [RabbitMQ clustering fundamentals](https://rabbitmq.com/clustering.html) before attempting
to use it.

While it may seem at times that this is a RabbitMQ cluster management solution,
it is not. Cluster provisioning and most of Day 2 operations such as [proper monitoring](https://rabbitmq.com/monitoring.html)
are not in scope for this plugin.


## Supported RabbitMQ Versions

This plugin requires RabbitMQ 3.7.0 or later.

For a Consul-based peer discovery and cluster formation
mechanism that supports 3.6.x, see [rabbitmq-autocluster](https://github.com/rabbitmq/rabbitmq-autocluster).


## Installation

This plugin ships with [supported RabbitMQ versions](https://www.rabbitmq.com/versions.html).
There is no need to install it separately.

As with any [plugin](https://rabbitmq.com/plugins.html), it must be enabled before it
can be used. For peer discovery plugins it means they must be [enabled](https://rabbitmq.com//plugins.html#basics) or [preconfigured](https://rabbitmq.com//plugins.html#enabled-plugins-file)
before first node boot:

```
rabbitmq-plugins --offline enable rabbitmq_peer_discovery_consul
```


## Documentation

See [RabbitMQ Cluster Formation guide](http://www.rabbitmq.com/cluster-formation.html).


## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) and our [development process overview](http://www.rabbitmq.com/github.html).


## License

[Licensed under the MPL](LICENSE-MPL-RabbitMQ), same as RabbitMQ server.


## Copyright

(c) Pivotal Software Inc., 2007-2019.
