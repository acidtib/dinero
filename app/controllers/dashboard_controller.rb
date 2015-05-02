class DashboardController < ApplicationController
  before_action :authenticate_user!
  def door
  end

  def settings
  end
end
