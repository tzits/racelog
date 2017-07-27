class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.confirm(params[:email], params[:password])

    if @user
      login(@user)
      flash[:success] = "Login Successful"
      redirect_to @user
    else
      flash[:error] = "Incorrect login or password"
      redirect_to root_path
    end

  end

  def destroy
    logout
    flash[:success] = "Bye for Now!"
    redirect_to root_path
  end
end
