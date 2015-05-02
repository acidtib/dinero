class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:door, :settings]

  def door
    @contacts = @user.contacts.all
  end

  def settings
  end

  def choose_value
    @create_transaction = Transaction.create(
      user_id: current_user.id,
      contact_id: params['contact']
    )
  end

  private
    def set_user
      @user = User.find(current_user.id)
    end
end
