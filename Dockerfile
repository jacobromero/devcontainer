FROM ubuntu:latest
RUN apt update
RUN apt install -y build-essential procps curl file git ruby zsh bash
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /root/.zshrc
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
RUN /home/linuxbrew/.linuxbrew/bin/brew install gcc neovim
CMD [ "zsh" ]
