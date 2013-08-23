class ApplicationController < ActionController::Base
  protect_from_forgery
  # helper_method :get_members

  
  include LeagueHelper
end
