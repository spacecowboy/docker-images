This is a build image which runs as your current user

## How to run

Assuming you are at the current directory of your project:

```
docker run --rm -it -e UID="$(id -u $(whoami))" \
                    -e GID="$(id -g $(whoami))" \
                    -v $(pwd):/workspace \
                    spacecowboy/docker-images:debian-dev \
                    <command>
```

So with a typical makefile, you'd do:


```
docker run --rm -it -e UID="$(id -u $(whoami))" \
                    -e GID="$(id -g $(whoami))" \
                    -v $(pwd):/workspace \
                    spacecowboy/docker-images:debian-dev \
                    make
```
