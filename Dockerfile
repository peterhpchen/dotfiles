FROM archlinux

COPY / /root/.dotfiles

RUN chmod +x /root/.dotfiles/_bootstraps/docker-dev-base.archlinux.sh
RUN /root/.dotfiles/_bootstraps/docker-dev-base.archlinux.sh

ENTRYPOINT /bin/zsh
