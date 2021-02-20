class SessionsController < ApplicationController

    def new
    end 

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid log in. Please try again."
            redirect_to '/login'
        end
    end 

    def destroy
        if logged_in?
            session.clear
            redirect_to '/login'
        end
    end

end
