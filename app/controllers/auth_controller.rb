require "byebug"
class AuthController < ApplicationController

    def login

    end

    def verify
        user = User.find_by(name: params[:auth][:name])
        if user
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "User does not exist please sign up"
            render :login
        end
    end

    def destroy
        user = User.find(session[:user_id])  
        if user   
        session[:user_id] = nil         
        redirect_to '/flix' 
        end
    end  
end
