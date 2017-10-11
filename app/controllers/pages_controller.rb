class PagesController < ApplicationController
	def home
		@cats = Cat.all
		@users = User.all
		@todos = Todo.all

	end

	def new
	end

	def create



		Todo.create(:tasks=> params[:todo][:tasks],
			:finished=> params[:todo][:finished])
		redirect_to '/'

	end

end
