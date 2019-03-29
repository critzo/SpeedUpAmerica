FROM ruby:2.3.1-alpine

RUN apk add --no-cache mariadb-dev make g++ linux-headers nodejs tzdata

WORKDIR /suyc
COPY . .
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
