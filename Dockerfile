FROM ruby:3.1.2

RUN apt-get update && apt-get install -y libcurl4-openssl-dev

RUN mkdir -p /src
COPY ./Gemfile /src
COPY ./Gemfile.lock /src
WORKDIR /src
RUN gem install bundler:2.3.24
RUN bundle install

COPY . /src

CMD ["bash", "/src/script/cibuild.sh"]