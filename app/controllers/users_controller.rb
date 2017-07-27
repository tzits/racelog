class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
    else
      explode
    end

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      redirect_to :back
      # flash[:error] = @user.errors.full_messages.join(". ")
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path
    else
      explode
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :email, :password)
  end
end
