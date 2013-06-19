class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :not_home

  def not_home
    @home = false
  end
end
