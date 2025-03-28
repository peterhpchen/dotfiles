# Demo in container

## Usages

```sh
cd ~/.dotfiles
# if you only update the dotfiles or the install script
# add --no-cache to avoid cache
docker build -t dot-demo -f .scripts/docker/Dockerfile.ubuntu .
docker run -v "$(pwd)":"/root/.dotfiles" -it --rm dot-demo
```
