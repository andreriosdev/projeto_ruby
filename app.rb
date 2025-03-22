require 'sinatra'

get '/' do
  "Olá, mundo! Este é um servidor Ruby rodando no Debian via WSL."
end

get '/sobre' do
  "Este é um servidor Sinatra simples."
end
