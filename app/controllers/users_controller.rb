class UsersController < ApplicationController
  before_action :correct_user, only: [:edit]

  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book =Book.new
  end

  def edit
    if @user == current_user
    @user = User.find(params[:id])
      render :edit
    else
      @user = current_user
      render user_path(current_user.id)
    end
  end

  def update
     @user = User.find(params[:id])
    if @user.update(user_params)
     flash[:notice] = "successfully"
       redirect_to user_path(@user)
    else
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def correct_user
    @user = User.find(params[:id])
    # redirect_to user_path(current_user.id) unless params[:id] == cur÷rent_user.id
    redirect_to(user_url(current_user)) unless @user == current_user

  end

end