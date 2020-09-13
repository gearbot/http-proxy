FROM ubuntu:latest

RUN apt-get update && apt-get install ca-certificates libssl-dev -y
WORKDIR /app.
COPY ./target/x86_64-unknown-linux-gnu/release/twilight-http-proxy /app/twilight-http-proxy
ENTRYPOINT /app/twilight-http-proxy                                                                                                                                                                                      ~