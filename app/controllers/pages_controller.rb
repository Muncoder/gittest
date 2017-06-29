class PagesController < ApplicationController
  #before_action :cookies_init

  def home
  	@is_user_visited = cookies[:user_name]
  end

  def delete_cookies
  	cookies.delete :user_name
  	redirect_to root_path
  end

  private

  def cookies_init
  	cookies[:user_name] = "visited_user"
  end


end