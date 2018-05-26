class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :redirect_www

  def redirect_www
  	if request.host == 'www.mountainsofhokkaido.com'
  		redirect_to 'https://www.mountainsofhokkaido.com' + request.fullpath, :status => 301
  	end
  end
end
