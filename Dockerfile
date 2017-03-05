FROM ruby:2.1-onbuild

RUN apt update && \
    apt install espeak \
                lame && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["rackup"]
