class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(u_params)
        if @user.save
            #session[:user_id] = @user.id
            flash[:message] = "Account has been created!"
            redirect_to login_path
        else
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
        @user.delete
        if @user.delete
            flash[:message] = "User has been deleted"
            redirect_to signup_path
        else
            render :show
        end
    end




    private 

    def u_params
        params.require(:user).permit(:name, :age)
    end

    # def results
    #     input = params[:searchinput]

    #     @inresult = Movie.all().where(name: ${input} )

    #     @addresult = Search.all.groupby(size).DESC


    # end

end
