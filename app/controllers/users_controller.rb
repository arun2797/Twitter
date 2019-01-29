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

  def send_mail

    @sender = current_user
    @receiver = User.find_by_id( params[:receiver_id] )
    @subject =  params[:p]
    @body = params[:b]
    
    ExampleMailer.sample_email(@sender, @receiver, @subject , @body).deliver_now

    respond_to do |format|
        format.js {render inline: "location.reload();" }
    end

  end


end
