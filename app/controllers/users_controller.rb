class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
      flash[:notice] = "ユーザーを新規登録しました！"
      redirect_to user_url @user
    else
      render :new
    end
  end
  
end
