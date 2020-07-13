class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    username = params[:username]
    @user = User.find_by(username: username)
    @user = User.create(username: username) unless @user
    session[:user_id] = @user.id
    redirect_to '/'
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end
end
