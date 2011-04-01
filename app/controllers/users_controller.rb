  class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create, :update]

  def new 
	  if logged_in?  or users_nil?
		    @user = User.new
		else 
	  		 redirect_to "/login"
	  end  

  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to "/"
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Your profile has been updated."
      redirect_to "/"
    else
      render :action => 'edit'
    end
  end
end
