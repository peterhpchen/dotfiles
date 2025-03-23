# Demo in ubuntu container

## Usages

```sh
cd ~/.dotfiles
docker build -t dot-demo .scripts/docker
docker run -v "$(pwd)":"/root/.dotfiles" -it --rm dot-demo
```
