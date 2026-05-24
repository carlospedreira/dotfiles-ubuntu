FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN apt update && apt install -y sudo curl locales zsh \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen en_US.UTF-8

RUN sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin

RUN useradd -m -s /bin/zsh carlos \
    && echo "carlos ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/carlos \
    && chmod 0440 /etc/sudoers.d/carlos
