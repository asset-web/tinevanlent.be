FROM ruby:4.0.1

RUN apt-get update && apt-get install -y libcurl4-openssl-dev

RUN mkdir -p /src
COPY ./Gemfile /src
# COPY ./Gemfile.lock /src
WORKDIR /src
RUN gem install bundler:4.0.5
RUN bundle install

COPY . /src

CMD ["bash", "/src/scripts/cibuild.sh"]