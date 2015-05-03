# == Schema Information
#
# Table name: transactions
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  contact_id       :integer
#  usd_amount       :string
#  pesos_amount     :string
#  btc_amount       :string
#  transaction_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Transaction < ActiveRecord::Base
end
