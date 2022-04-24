FROM archlinux

COPY / /root/.dotfiles

RUN chmod +x /root/.dotfiles/_bootstraps/archlinux.sh
RUN /root/.dotfiles/_bootstraps/archlinux.sh

ENTRYPOINT /bin/zsh
