class PagesController < ApplicationController
  def index
  end

  def home

  	@posts = Post.all
    @newPost = Post.new
    @users = User.all

  end

  def explore

  	@posts = Post.all

  end

  
  def profile

  	if ( User.find_by_email(params[:id]) )
      @user_of_current_profile =  User.find_by_email(params[:id])
  		@username = params[:id]
  	else
  		redirect_to root_path, :notice => "User Not Found"
  	end

    @posts = @user_of_current_profile.posts
    @newPost = Post.new
    @users = User.all

  end


end
