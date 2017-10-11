class PagesController < ApplicationController
	def home
		@cats = Cat.all
		@users = User.all
		@todos = Todo.all

	end

	def new
	end

	def create
		Cat.create(:name=> params[:name])
		User.create(:name=> params[:email],
			:email=> params[:email],
			:age=> params[:age])
		Todo.create(:tasks=> params[:tasks],
			:finished=> params[:finished])
		redirect_to '/'

	end

end
