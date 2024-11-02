FROM debian:latest

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
        build-essential \
        git \
        ruby-full \
        ruby-bundler \
        ruby-dev \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd app \
    && useradd -m -g app -s /bin/bash app

WORKDIR /home/app

COPY --chown=app:app Gemfile.dev Gemfile

RUN bundle lock --add-platform "$(ruby -e 'puts RUBY_PLATFORM')" \
    && bundle install

USER app

COPY --chown=app:app . .

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--trace", "--livereload"]