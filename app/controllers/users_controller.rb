class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        user = User.find_by(name: params[:session][:name])
        user = user.try(:authenticate, params[:session][:password])

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else
            flash[:errors] = "Username or Password are incorrect"
            redirect_to new_login_path
        end
    end

    def edit
        @user = User.find(current_user.id)
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :email, :age)
    end

end
