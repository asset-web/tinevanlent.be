FROM ruby:3.3.4

RUN apt-get update && apt-get install -y libcurl4-openssl-dev

RUN mkdir -p /src
COPY ./Gemfile /src
COPY ./Gemfile.lock /src
WORKDIR /src
RUN gem install bundler:2.3.27
RUN bundle install

COPY . /src

CMD ["bash", "/src/scripts/cibuild.sh"]