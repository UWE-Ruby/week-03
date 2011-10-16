require 'rubygems'
require 'sinatra'

# Sinatra has some good documentation
# 
# @see http://www.sinatrarb.com/
# @see http://www.sinatrarb.com/intro.html
# 
# Give it a read and see what fun things you can put together. Don't feel like
# you need to go over everything.
# 

get '/' do
  "<h1>Hello World</h1>"
end

get '/admin' do
  %{
    <h1>Admin Page</h1>
    <h2>This is the stuff of admins</h2>
  }
end