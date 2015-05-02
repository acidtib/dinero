class RemittanceController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:door, :settings]

  def quote
    @transaction = Transaction.find(params['transaction'])

    @transaction.update(
      transaction_type: "money"
    )
  end

  def funding
    @transaction = Transaction.find(params['transaction'])
  end

  private
    def set_user
      @user = User.find(current_user.id)
    end
end
