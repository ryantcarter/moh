class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :redirect_www

  def redirect_www
  	if (!request.ssl? || request.host == 'mountainsofhokkaido.com') && !request.local?
			redirect_to "https://www.mountainsofhokkaido.com"
		end
  end
end
