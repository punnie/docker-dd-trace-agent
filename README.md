dd-trace-agent
=====

## Usage

```bash
$ docker pull punnie/dd-trace-agent
```

## Run

```bash
$ docker run --name dd-trace-agent -d \
    -p 8126:8216 \
    -e DD_API_KEY=YOUR_API_KEY \
    -e DD_BIND_HOST=0.0.0.0 \
    punnie/dd-trace-agent:latest
```

## License

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
