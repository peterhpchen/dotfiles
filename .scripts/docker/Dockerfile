# TODO: Use specific version
FROM ubuntu:latest

# tzdata
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Taipei

RUN apt update
RUN apt install -y curl
RUN apt install -y git

# dotfiles
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/peterhpchen/dotfiles/main/.scripts/install.ubuntu.sh)"

ENTRYPOINT ["fish"]
