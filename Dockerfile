FROM ruby:4.0.3

RUN apt-get update && apt-get install -y libcurl4-openssl-dev

RUN mkdir -p /src
COPY ./Gemfile /src
# Disable when updating bundler
COPY ./Gemfile.lock /src
WORKDIR /src
RUN gem install bundler:4.0.10
# Disable when updating bundler
RUN bundle install

COPY . /src

CMD ["bash", "/src/scripts/cibuild.sh"]