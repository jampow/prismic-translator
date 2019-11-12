FROM ruby

RUN gem install sinatra kramdown-prismic json

COPY ./server.rb /app/server.rb

EXPOSE 4567

ENTRYPOINT ruby /app/server.rb
