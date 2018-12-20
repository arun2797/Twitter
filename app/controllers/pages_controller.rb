class PagesController < ApplicationController
  def index
  end

  def home

  	@posts = Post.all
    @newPost = Post.new

  end

  def explore

  	@posts = Post.all

  end

  
  def profile

  	if ( User.find_by_email(params[:id]) )
  		@username = params[:id]
  	else
  		redirect_to root_path, :notice => "User Not Found"
  	end

  	@posts = Post.all.where("user_id=?",User.find_by_email(params[:id]).id)
    @newPost = Post.new
    @users = User.all

  end


end
