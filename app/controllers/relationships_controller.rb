class RelationshipsController < ApplicationController

	
	def create 
		user = User.find(params[:followed_id])
		current_user.follow(user)
		redirect_to "", notice: "Followed User Successfully "
	end

	def destroy

		user = Relationship.find(params[:id]).followed
		current_user.unfollow(user)
		redirect_to "", notice: "Unfollowed User Successfully " 
	end


  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'user/show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'user/show_follow'
  end

end
