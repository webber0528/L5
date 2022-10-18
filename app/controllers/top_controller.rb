class TopController < ApplicationController

    def main
        render 'login'
    end
    
    
    def login 
        if User.find_by(uid: params[:uid], pass: BCrypt::Password.new(params[:uid]) )
            session[:login_uid] = params[:uid]
            session[:login_pass] = params[:pass]
            redirect_to root_path
        end
    end

    def logout
        session.delete(:login_uid)
        session.delete(:login_pass)
        redirect_to root_path
    end
    
end
