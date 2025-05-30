class HomeController < ApplicationController
  skip_authorize_resource
  skip_before_action :authenticate_user!
  skip_authorization_check
  def index
  end
end
