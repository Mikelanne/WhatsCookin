class SessionsController < ApplicationController


    def new
    end 

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to '/' # will want to redirect to user show page once created
        else
            flash[:message] = "Invalid credentials. Please try again."
            redirect_to '/login'
        end
    end 

    def destroy
        session.delete[:user_id]
        redirect_to '/login'
    end

end
