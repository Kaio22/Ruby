require 'sinatra'

set :port, 9090
# olhar o set :bind, 0.0.0.0

get '/' do
   erb :index
end



#get '/cacilds' do
#File.read("/tmp/resolv.conf")
#end

post '/login' do 
  usuarios = []
  usuarios.push(params)
  puts usuarios.inspect
end
