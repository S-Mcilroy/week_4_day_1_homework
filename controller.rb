require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')
also_reload('./models/*')

get '/:object1/:object2' do
  @outcome =  Game.play(params["object1"], params["object2"])
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/:object1' do
  @option1 = params["object1"]
  erb(:first_option)
end
