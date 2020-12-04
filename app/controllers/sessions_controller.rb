class SessionsController < ApplicationController

    def new
    end

    def home
    end

    def logout
        session.delete :user_id

        redirect_to root_path
    end

    def login
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

end