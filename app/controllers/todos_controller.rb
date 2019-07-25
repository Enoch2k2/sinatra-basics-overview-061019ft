class TodosController < ApplicationController

  get '/todos/new' do
    erb :'todos/new'
  end

  post '/todos' do
    todo = Todo.create(title: params[:title], completed: params[:completed])
    redirect '/'
  end
end