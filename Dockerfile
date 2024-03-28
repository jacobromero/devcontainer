FROM ubuntu:latest
LABEL org.opencontainers.image.source=https://github.com/jacobromero/devcontainer
RUN apt update
RUN apt install -y build-essential procps curl file git ruby zsh bash
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz && rm -rf /opt/nvim && tar -xvf nvim-linux64.tar.gz && mv nvim-linux64 /opt/nvim && ln -s /opt/nvim/bin/nvim /usr/local/bin
CMD [ "zsh" ]
