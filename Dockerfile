FROM archlinux

COPY / /root/.dotfiles

ARG __config_name=ide.base

RUN chmod +x /root/.dotfiles/_scripts/bootstrap.sh
RUN /root/.dotfiles/_scripts/bootstrap.sh $__config_name

ENTRYPOINT /bin/zsh
