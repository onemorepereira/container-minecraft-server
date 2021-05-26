# MINECRAFT IN A WHALE

## What?

Yet another (poorly) containerized Minecraft Java edition server.

## Why?

I could make up reasons all day long...
- I don't trust third-party containers
- I thoroughly enjoy the thrill of containerization
- I am a tinkerer
- It's Tuesday

## How?

- You'll need Docker, Podman or Buildah to build the image.

 ### Podman (Docker) build instructions

 ```bash
 podman build \
    -t localhost/minecraft \
    .
 ```

 ### Running the server using Podman (Docker)

 ```bash
 podman run \
    -p 25565:25565 \
    -p 25575:25575 \
    localhost/minecraft
```

## Contributing

First off..._oh my gosh, why would you?_ But if you really must, find an area to improve, fork the repo, make your changes and submit your pull request with a brief explanation of what you've done.