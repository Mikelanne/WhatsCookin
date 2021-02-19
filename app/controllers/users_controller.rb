class UsersController < ApplicationController
    before_action :require_login

    def new
    end

    def create
    end

    def show
    end

    private

    def require_login
        return head(:forbidden) unless session.include? :user_id
      end

end
