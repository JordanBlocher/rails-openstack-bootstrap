class DashboardController < ApplicationController
  before_filter :authenticate_cloud_user!

  def index
  end
end
