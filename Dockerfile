FROM rust:1.66.0-slim-bullseye

RUN --mount=type=cache,target=/app/target \
    --mount=type=cache,target=/usr/local/cargo/registry \
    --mount=type=cache,target=/usr/local/cargo/git \
    --mount=type=cache,target=/usr/local/rustup \
    set -eux; \
    mkdir -p /app; \
    rustup install stable; \
    rustup target add wasm32-unknown-unknown; \
    cargt install --locked trunk

WORKDIR /app
