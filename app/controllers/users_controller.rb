class UsersController < ApplicationController

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @allusers = User.all
    @users = []

    @allusers.each do |each|
    	if @user.following?(each)
    		@users.push(each)
    	end
    end
    render 'user/show_follow'

  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @allusers = User.all
    @users = []

    @allusers.each do |each|
    	if each.following?(@user)
    		@users.push(each)
    	end
    end
    render 'user/show_follow'

  end

end
