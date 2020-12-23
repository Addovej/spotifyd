# [spotifyd](https://github.com/Spotifyd/spotifyd) in docker.

## Usage
Using only in docker-compose as service with specify volumes cause this image has not an entrypoint:
```yaml
services:
  web:
    image: spotifyd
    build:
      context: .
    devices:
      - /dev/snd
    restart: unless-stopped
    command: spotifyd --config-path /etc/spotifyd.conf --no-daemon
```

## Build
```bash
docker buildx --tag addovej/spotifyd:latest --platform linux/amd64,linux/arm/v7,linux/arm/v6 --push
```

DockerHub image: [addovej/spotifyd:latest](https://hub.docker.com/r/addovej/spotifyd)

A config file example in [official documentation of spotifyd](https://github.com/Spotifyd/spotifyd#configuration-file).
You can use it and specify this file as volume in a compose file like this: `- /path/to/spotifyd.conf:/etc/spotifyd.conf`.

# Note
I'm use this image as base just to copy spotifyd binary in my image to decrease building time.
Don't use it if you not sure.

For contact to me:

Telegram: [@addovej](https://t.me/addovej)

Email: [addovej@gmail.com](mailto:addovej@gmail.com)
