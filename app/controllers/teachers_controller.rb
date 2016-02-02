class TeachersController < ApplicationController
  def index
		@teachers = Teacher.all
  end

  def show
		@teacher = Teacher.find(params[:id])
  end

	def create
	end

	def edit
	end

	def update
	end

	def delete
	end
end
