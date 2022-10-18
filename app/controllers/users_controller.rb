class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @users = User.new
  end
  
  def create
  @users = User.new(uid: params[:user][:uid] , pass: BCrypt::Password.create(params[:user][:uid]) )
    
    if @users.save
      session[:uid] = params[:uid]
      session[:pass] = params[:pass]
      redirect_to root_path
    end
    
    
  end
  
  def destroy
    @users = User.find(params[:id])
    @users.destroy
    flash[:notice] = 'ユーザーを削除しました'
    redirect_to root_path
  end
 
 
end
