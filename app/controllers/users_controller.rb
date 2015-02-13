class UsersController < ApplicationController
  before_action :authenticate_user!


  # GET /users
  # GET /users.json
  def index
    #@users = User.all
    @users = User.paginate(page: params[:page], per_page: 10) 
  end

  # GET /users/1
  # GET /users/1.json
  def show
    #@user = current_user
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page], per_page: 5)
  end

end
