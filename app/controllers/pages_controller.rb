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

  	if ( User.find_by_id(params[:id]) )
      puts params[:id]
      @user_of_current_profile =  User.find_by(:id=>params[:id])
  		@username = @user_of_current_profile.email
  	else
  		redirect_to root_path, :notice => "User Not Found"
  	end

    @posts = @user_of_current_profile.posts
    @newPost = Post.new
    @users = User.all

  end


end
