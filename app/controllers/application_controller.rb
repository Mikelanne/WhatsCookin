class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def home
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end


    def logged_in?
      !!session[:user_id]
    end
  
    private
  
    def require_login
      redirect_to :controller => 'sessions', :action => 'new' unless logged_in?
    end
end
