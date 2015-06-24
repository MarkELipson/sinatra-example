require 'sinatra'

get '/' do
  "Hello World"
end

get '/about' do
  erb :about
end

get '/cool_pic' do
  "<img src='http://25.media.tumblr.com/tumblr_lqv4l0ukHu1r13m08o1_400.jpg'>"
end

get '/popup' do
  "<script>alert('SUP?')</script>"
end

get '/home' do
  @company_name = "Globocorp"
  erb :home 
end