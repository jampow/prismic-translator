require 'sinatra'
require 'kramdown-prismic'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  "send me a post with data\ncurl -X POST http://localhost:4567/ -d \"<p>teste</p>\""
end

post '/' do
  html = request.body.read
  JSON.generate Kramdown::Document.new(html, input: :html).to_prismic
end
