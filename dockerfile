FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app-root

RUN apt update -y && \
    apt install zsh git curl wget -y 

# COPY scripts ./.cli-config/scripts
# COPY *.sh ./.cli-config/
RUN git clone -b docker https://github.com/mrsauravsahu/cli-config ./.cli-config

RUN ./.cli-config/setup.sh

RUN echo 'CLI_CONFIG_ROOT=/app-root/.cli-config' >> ~/.zshrc
RUN echo 'source "$CLI_CONFIG_ROOT/main.sh"' >> ~/.zshrc

CMD tail -f /dev/null

EXPOSE 80 8080 3000