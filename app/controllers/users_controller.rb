class UsersController < ApplicationController
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
    @user = User.find(params[:id])

  end

  def update
     @user = User.find(params[:id])
    if @user.update(user_params)
     flash[:notice] = "successfully"
       redirect_to books_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
