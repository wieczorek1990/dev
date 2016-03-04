# dev

Docker image for development.

Based on latest Debian. Installs only fish and vim. Starts fish on `docker run`. Mounts `/shared` directory under `/shared` in container.

## Usage

Install docker first, then:

```shell
./build.sh
./start.sh
```

You can provide additional arguments to build and start scripts.

To commit changes after leaving the container run `./commit.sh`.
