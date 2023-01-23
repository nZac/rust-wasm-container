FROM rust:1.66.0-slim-bullseye

RUN set -eux; \
    mkdir -p /app; \
    rustup install stable; \
    rustup target add wasm32-unknown-unknown; \
    cargo install --locked trunk

# Install Tailwind CSS CLI Command
RUN apt update; \
    apt install -y wget; \
    wget https://github.com/tailwindlabs/tailwindcss/releases/download/v3.2.4/tailwindcss-linux-x64 -O /usr/local/bin/tailwindcss; \
    chmod +x /usr/local/bin/tailwindcss


WORKDIR /app
