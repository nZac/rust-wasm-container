FROM rust:1.66.0-slim-bullseye

RUN set -eux; \
    mkdir -p /app; \
    rustup install stable; \
    rustup target add wasm32-unknown-unknown; \
    cargo install --locked trunk

WORKDIR /app
