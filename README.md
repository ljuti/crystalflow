# crystalflow

Crystalflow is a high-level deep learning and neural networks library for Crystal.

It has a sibling project on Ruby, [Roseflow](https://github.com/humane-ai/roseflow).

## About

[TensorFlow™](https://tensorflow.org) is an open source software library for numerical computation using data flow graphs. Nodes in the graph represent mathematical operations, while the graph edges represent the multidimensional data arrays (tensors) communicated between them. The flexible architecture allows you to deploy computation to one or more CPUs or GPUs in a desktop, server, or mobile device with a single API.

The [TensorFlow C API](https://www.tensorflow.org/code/tensorflow/c/c_api.h) exposes internal core functions of TensorFlow that enable constructing and executing TensorFlow graphs. This shard providers access to the complete TensorFlow C API from Crystal.

**WARNING**

_This shard is still early in development and might not yet provide any easy way to use TensorFlow effectively in Crystal._

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystalflow:
    github: ljuti/crystalflow
```

### Installing TensorFlow

This shard depends on TensorFlow library.

#### Mac OSX

You can install TensorFlow library with Homebrew

    $ brew install libtensorflow

## Usage

```crystal
require "crystalflow"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/ljuti/crystalflow/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [ljuti](https://github.com/ljuti) Lauri Jutila - creator, maintainer
