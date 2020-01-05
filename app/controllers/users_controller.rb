require "byebug"
class UsersController < ApplicationController
    before_action :require_login, except: [:new, :create]
    def new
        @user = User.new
    end

    def create
        @user = User.new(u_params)
        if @user.save
            redirect_to flix_path
            flash[:message] = "Please Login"
            session[:user_id] = @user.id
        else
            flash[:message] = "Invalid input"
            render :new
        end
    end

    def show
        @user = User.find(params[:id])

    end

    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        @user.update_attributes(u_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user.delete
            flash[:message] = "User has been deleted"
            redirect_to flix_path
        else
            render :show
        end
    end

    private 

    def u_params
        params.require(:user).permit(:name, :age)
    end
end
