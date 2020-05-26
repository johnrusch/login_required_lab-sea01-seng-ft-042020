class SessionsController < ApplicationController

    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :name
    end
end