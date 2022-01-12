FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Use UTF-8.
RUN apt-get update \
  && apt-get install locales \
  && sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen \
  && locale-gen \
  && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install website build dependencies.
RUN apt-get update \
  && apt-get -y install nodejs yarnpkg ruby bundler \
  && sudo ln -s /usr/bin/yarnpkg /usr/bin/yarn \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Web server.
EXPOSE 4000

# LiveReload server.
EXPOSE 35729

CMD [ "/bin/bash", "-c", "bundler install && yarn serve" ]
