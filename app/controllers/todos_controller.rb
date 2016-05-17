class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new
		@todo.title = params[:todo][:title]
		@todo.done = params[:todo][:done]

		if @todo.save
			redirect_to "/todos"
		else
			render :new, notice: 'Something went wrong'
		end
	end

	def show
		@todo = Todo.find(params[:id])
	end
end
