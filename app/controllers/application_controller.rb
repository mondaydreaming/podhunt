class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

    private
    def authenticate
        if session[:listener_id].present?
            @current_listener = Listener.find_by :id =>session[:listener_id]
        end
        session[:listener_id] = nil unless @current_listener.present?
        @listener= Listener.find session[:listener_id] if session[:listener_id].present?
    end

end
