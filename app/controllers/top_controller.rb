class TopController < ApplicationController

    def main
        
        if session[:uid] 
            render 'main'
        else 
            render 'login'
        end
    end
    
    
    def login 
        
        user = User.find_by(uid: params[:uid])
        
        if user 
            
            logpass = BCrypt::Password.new(user.pass)
            
            if logpass == params[:pass]
                
                session[:login_uid] = params[:uid]
                session[:login_pass] = params[:pass]
                redirect_to root_path
            else 
                render 'login'
                
            end
        else 
            render 'login'
        end
    end

    def logout
        
        session.delete(:login_uid)
        session.delete(:login_pass)
        
        redirect_to root_path
        
    end
    
end
