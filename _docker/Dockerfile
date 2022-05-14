FROM archlinux

COPY /.dotfiles /root/.dotfiles

ARG __config_name=ide.base
ENV TERM=screen-256color

RUN chmod +x /root/.dotfiles/_scripts/bootstrap.sh
RUN /root/.dotfiles/_scripts/bootstrap.sh $__config_name

RUN mkdir -p /root/workspace

WORKDIR /root/workspace

ENTRYPOINT tmux
