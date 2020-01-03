class AuthController < ApplicationController
    def login

    end

    def verify
        user = User.find_by(name: params[:auth][:name])
        if user
            session[:user_id] = user.id
            redirect_to :root
        else
            flash[:message] = "Incorrect Responce"
            render :login
        end

    end
end
