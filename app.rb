require 'sinatra'

get '/' do
  "Welcome to the site!"
end

get '/about' do
  erb :about
end

get '/sign-in' do
  erb :root
end

post '/sign-in' do
  # the form in views/root.erb POSTS here
  @username = params['username']
  password = params['password']
  #here you could add code to, for example,
  #log this user in
  "Welcome #{@username}"
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