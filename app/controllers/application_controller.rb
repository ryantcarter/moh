class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :redirect_www

  def redirect_www
		redirect_to protocol: "https://" unless (request.ssl? || request.local?)
  end
end
