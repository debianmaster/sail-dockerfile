FROM ubuntu:latest
RUN apt update -y \
&& apt install -y curl sudo docker.io \
&& rm -rf /var/lib/apt/lists/*
RUN curl https://sail.dev/install.sh | bash
CMD ["sail","run","cdr/sail"]

