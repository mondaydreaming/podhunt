class SessionController < ApplicationController
    def new
    end

    def create
        listener = Listener.find_by :username =>params[:username]
        if listener.present? && listener.authenticate(params[:password])
            session[:listener_id] = listener.id
            redirect_to(root_path)
        else
            flash[:error] ="Invalid login or password"
            redirect_to(login_path)
        end
    end

    def destroy
        session[:listener_id] = nil
        redirect_to root_path
    end

end
