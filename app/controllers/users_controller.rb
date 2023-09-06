class UsersController < ApplicationController
  # list users
  def index
    @users = User.all
  end

  # Show a user's profile
  def show
    @user = User.find_by_id(params[:id])
  end
  # Create a new user

  def new
    @user = User.new
  end

  # Save a new user
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # Edit a user's profile
  def edit
    @user = User.find(params[:id])
  end

  # Update a user's profile
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # Delete a user
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def user_params
    # Define strong parameters for user attributes here
    params.require(:user).permit(:username, :email, :password, :other_attributes)
  end
end
