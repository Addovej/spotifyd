# [spotifyd](https://github.com/Spotifyd/spotifyd) in a docker

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

# Note
I'm use this image as base just to copy spotifyd binary in my image to decrease building time.
Don't use it if you not sure.

For contact to me:

Telegram: [@addovej](https://t.me/addovej)

Email: [addovej@gmail.com](mailto:addovej@gmail.com)