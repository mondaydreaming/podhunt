module ApplicationHelper
    def nav_menu
        links = "<li>#{link_to("Home", root_path)}</li><li>#{link_to("Search", search_podcasts_path)}</li>"
        if @current_listener.present?
            links += "<li>#{link_to("Log out", login_path, :method => :delete)} </li>
            <li>#{link_to("Edit account", edit_listener_path(@current_listener.id))}</li>
            <li>#{link_to("My playlist", podcasts_path)}</li>"
        else
            links += "<li>#{link_to("Sign up", new_listener_path)}</li><li>#{link_to("Log in", login_path)} </li>"
        end
        links
    end
end
