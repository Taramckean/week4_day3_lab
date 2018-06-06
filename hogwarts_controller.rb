require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative('./models/hogwarts')
also_reload('./models/*')

get '/hogwarts' do
  erb(:home)
end

get '/hogwarts/students' do
  @students = Student.all()
  erb(:index)
end

post '/hogwarts/students/create' do
  @students = Student.new(params)
  @students.save()
  redirect to '/hogwarts/students/create'
end

get '/hogwarts/students/new' do
  erb(:new)
end

get '/hogwarts/students/create' do 
erb(:create)
end
