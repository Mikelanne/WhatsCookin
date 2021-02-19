class ApplicationController < ActionController::Base
    helper_method :current_user

    def home
    end

    def current_user
      session[:user_id] ||= user.id
    end
  
    private
  
    def require_login
      redirect_to :controller => 'sessions', :action => 'new' unless current_user
    end
end
