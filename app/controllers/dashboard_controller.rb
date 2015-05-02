class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:door, :settings]

  def door
    @contacts = @user.contacts.all
  end

  def settings
  end

  def choose_value
    
  end

  private
    def set_user
      @user = User.find(current_user.id)
    end
end
