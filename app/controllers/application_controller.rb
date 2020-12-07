class ApplicationController < ActionController::Base
    before_action :current_user

    def current_user
        return unless session[:user_id]
        @current_user ||= User.find(session[:user_id])
    end

    def logged_in?
        current_user.id? != nil
    end

    def require_logged_in
        return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
end
