class SessionsController < ApplicationController

    def new
    end

    def logout
        session.delete :user_id

        redirect_to root
    end

    def login
        user = User.find_by(name: params[:session][:name])

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id 
            redirect_to kitchen_path(user.kitchen)
        else
            flash[:errors] = "Username or Password are incorrect"
            redirect_to new_login_path
        end
    end
    
end