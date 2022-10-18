class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweets = Tweet.new
  end
  
  def create
    @tweets =  Tweet.new(message: params[:tweet][:message])
    if @tweets.save
      flash[:notice] = '1レコード追加しました'
      redirect_to root_path

    end
    
  end
  
  def destroy
    @tweets = Tweet.find(params[:id])
    @tweets.destroy
    flash[:notice] = '1レコード削除しました'
    redirect_to root_path
  end
  

  
end