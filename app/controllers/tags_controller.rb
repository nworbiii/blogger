class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]
	
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		redirect_to article_path(@article)
	end
end
