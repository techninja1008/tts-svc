FROM ruby:2.1

RUN mkdir -p /usr/src/app/ git clone https://github.com/dejan/espeak-http /usr/src/app/

WORKDIR /usr/src/app/
RUN bundle install

RUN apt update && \
    apt install espeak \
                lame && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["rackup"]
