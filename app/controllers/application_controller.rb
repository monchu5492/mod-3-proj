class ApplicationController < ActionController::Base
    def require_login
        if !session[:user_id]
            flash[:message] = "PLEASE LOGIN"
            redirect_to flix_path
        end
    end

end
