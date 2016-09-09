class UsersController < ApplicationController

  before_action :set_user
  def show
  end

  def edit
  end

  def update
    @user.resume = params[:user][:resume]
    if @user.save
      redirect_to root_path
    else
      flash[:error] = 'Something went wrong!'
      render 'edit'
    end
  end

  private
  def set_user
    @user = User.find(params[:id] || params[:user_id])
  end
end
