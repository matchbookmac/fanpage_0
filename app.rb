require('sinatra')
require('sinatra/reloader')

get('/') do
  @location = "home"
  erb(:index)
end

get('/bio') do
  @location = "bio"
  erb(:bio)
end

get('/songs') do
  @one = "Stardust"
  @two = "A Foggy Day"
  @three = "Let's Fall in Love"
  @four = "The Girl Next Door"
  @five = "Old Devil Moon"
  erb(:songs)
end

get('/leave_comment') do
  erb(:leave_comment)
end

get('/comment') do
  @name = params.fetch('name')
  @comment = params.fetch('comment')
  erb(:comment)
end
